import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
 int counter = 1;
@override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter'
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed:(){
                setState(() {
                  counter--;
                  print(counter);
                });
              },
              child: Text(
                'Minus',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: Text(
                '$counter',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              onPressed:(){
                setState(() {
                  counter++;
                  print(counter);
                });
              },
              child: Text(
                'Plus',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
