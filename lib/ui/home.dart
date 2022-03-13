import 'package:flutter/material.dart';

class TipCounter extends StatefulWidget {
  TipCounter({Key? key}) : super(key: key);

  @override
  State<TipCounter> createState() => _TipCounterState();
}

class _TipCounterState extends State<TipCounter> {
  double _billAmount = 0.0;
  int _person = 1;
  double _tip = 0.0;
  int _tipPeresent = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(20),
          children: [
            Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.amberAccent.shade100,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('data'),
                  const Text('\$235'),
                ],
              ),
            ),
            Container(
              width: 350,
              height: 400,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                // color: Colors.blue,
                border: Border.all(color: Colors.black45),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  TextField(
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    decoration: const InputDecoration(
                      prefixText: "Bill Amount",
                      prefixIcon: Icon(Icons.attach_money),
                    ),
                    style: const TextStyle(color: Colors.deepOrangeAccent),
                    onChanged: (String value) {
                      try {
                        _billAmount = double.parse(value);
                      } catch (e) {
                        _billAmount = 0.0;
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Split"),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (_person > 1) {
                                  _person--;
                                } else {
                                  // do nothing
                                }
                              });
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.amber.shade100,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                  child: Text(
                                '-',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.deepOrange,
                                ),
                              )),
                            ),
                          ),
                          Text(
                            "$_person",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.deepOrange,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _person++;
                              });
                            },
                            child: Container(
                                width: 40,
                                height: 40,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.amber.shade100,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                  child: Text("+",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.deepOrange,
                                      )),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Tip"),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "\$$_tip",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$_tipPeresent%",
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange,
                        ),
                      ),
                      Slider(
                        min: 0,
                        max: 100,
                        value: _tipPeresent.toDouble(),
                        onChanged: (double value) {
                          _tipPeresent = value.round();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
