import 'package:flutter/material.dart';

class ButtonOfCalculator extends StatelessWidget {
  // const ButtonOfCalculator({Key? key}) : super(key: key);

  // symbol ? => optional
  final String text;
  final Color? color;
  final Color? txtColor;
  final EdgeInsets? edgeInsets;
  final dynamic? shape;
  const ButtonOfCalculator({
        required this.text,
        this.color,
        this.txtColor,
        this.edgeInsets,
        this.shape});
  // {} -> bisa melakukan set sebuah attribute optional atau required
  // {} -> harus define sama attributenya ketika memanggil kelas ini
  // {} -> dapat memanggil attribute tidak berurutan
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 10.0),
        child: MaterialButton (
            onPressed: (){

            },
            child: Text(text,
              style: TextStyle(
                fontSize: 30,
                color: txtColor ?? Colors.white,
              ),
            ),
            color: color ?? Color(0xff333333),
            padding: edgeInsets ?? EdgeInsets.all(22.0),
            shape: shape ?? CircleBorder()
        )
    );
  }
}

