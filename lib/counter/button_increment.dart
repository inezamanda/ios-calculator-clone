import 'package:flutter/material.dart';

class IncrementButton extends StatelessWidget {
  final VoidCallback increment;
  const IncrementButton({Key? key, required this.increment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(onPressed: increment, child: Text('+', style: TextStyle(fontSize: 50))),
    );
  }
}
