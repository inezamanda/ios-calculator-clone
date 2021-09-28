import 'package:flutter/material.dart';
import 'button_of_calculator.dart';

class IosCalculator extends StatefulWidget {
  const IosCalculator({Key? key}) : super(key: key);

  @override
  _IosCalculatorState createState() => _IosCalculatorState();
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonOfCalculator(text: 'AC', color: Color(0xffa5a5a5)),
                ButtonOfCalculator(text: '+/-', color: Color(0xffa5a5a5)),
                ButtonOfCalculator(text: '%', color: Color(0xffa5a5a5)),
                ButtonOfCalculator(text: '/', color: Colors.orange)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonOfCalculator(text: '7'),
                ButtonOfCalculator(text: '8'),
                ButtonOfCalculator(text: '9'),
                ButtonOfCalculator(text: 'x', color: Colors.orange)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonOfCalculator(text: '4'),
                ButtonOfCalculator(text: '5'),
                ButtonOfCalculator(text: '6'),
                ButtonOfCalculator(text: '-', color: Colors.orange)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonOfCalculator(text: '1'),
                ButtonOfCalculator(text: '2'),
                ButtonOfCalculator(text: '3'),
                ButtonOfCalculator(text: '+', color: Colors.orange)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonOfCalculator(text: '0',
                    edgeInsets: EdgeInsets.only(
                        left: 81, top: 20, right: 81, bottom: 20),
                    shape: StadiumBorder()),
                ButtonOfCalculator(text: '.'),
                ButtonOfCalculator(text: '=', color: Colors.orange)
              ],
            ),
          ],
        ),
      ),
    );
  }
}