import 'package:flutter/material.dart';
import 'button_of_calculator.dart';

class IosCalculator extends StatefulWidget {
  const IosCalculator({Key? key}) : super(key: key);

  @override
  _IosCalculatorState createState() => _IosCalculatorState();
}

Row keyPadFun(List<String> num) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: 
      List.generate(num.length, (index) => _buttonOfCalculatorBuilder(num[index]))
  );
}

Column keyPad() {
  List data = [
    ['AC', '+/-', '%', '/'],
    ['7', '8', '9', 'x'],
    ['4', '5', '6', '-'],
    ['1', '2', '3', '+'],
    ['0', '.', '='],
  ];

  return Column(
    children: List.generate(
      data.length,
      (index) => keyPadFun(data[index]),
    )
  );
}

Widget _buttonOfCalculatorBuilder(String number) {
  return ButtonOfCalculator(text: number);
}

class _IosCalculatorState extends State<IosCalculator> {

  String text = '0';

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: null,
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(bottom: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60.0,
                    ),
                    textAlign: TextAlign.right,
                    maxLines: 1,
                  ),
                )
              ],
            ),
            keyPad()
          ],
        ),
      ),
    );
  }
}