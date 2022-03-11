import 'package:flutter/material.dart';

class TipCounter extends StatefulWidget {
  TipCounter({Key? key}) : super(key: key);

  @override
  State<TipCounter> createState() => _TipCounterState();
}

class _TipCounterState extends State<TipCounter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.amberAccent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('data'),
                  Text('\$235'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
