import 'package:flutter/material.dart';
import 'package:flutter_learn_day_one/counter/button_decrement.dart';
import 'package:flutter_learn_day_one/counter/button_increment.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int val = 0;

  _increment(){
    setState(() {
      val++;
    });
  }

  _decrement(){
    setState(() {
      val--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: Column(
        children: [
          Text(val.toString(), style: TextStyle(fontSize: 45)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IncrementButton(increment: _increment),
              DecrementButton(decrement: _decrement),
            ],
          )
        ],
      ),
    );
  }
}

