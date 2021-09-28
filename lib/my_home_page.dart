import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  Widget btn(btnText) {
    return Container(
        padding: EdgeInsets.only(bottom: 10.0),
        child: ElevatedButton (
            onPressed: (){},
            child: Text(btnText,
              style: TextStyle(
                  fontSize: 30
              ),
            ),
            style: ElevatedButton.styleFrom(
                primary: Color(0xff333333),
                padding: EdgeInsets.all(22.0),
                shape: CircleBorder()
            )
        )
    );
  }

  Widget btnTop(btnText) {
    return Container(
        padding: EdgeInsets.only(bottom: 10.0),
        child: ElevatedButton (
            onPressed: (){},
            child: Text(btnText,
              style: TextStyle(
                  fontSize: 30
              ),
            ),
            style: ElevatedButton.styleFrom(
                primary: Color(0xffa5a5a5),
                padding: EdgeInsets.all(22.0),
                shape: CircleBorder()
            )
        )
    );
  }

  Widget btnRight(btnText) {
    return Container(
        padding: EdgeInsets.only(bottom: 10.0),
        child: ElevatedButton (
            onPressed: (){},
            child: Text(btnText,
              style: TextStyle(
                  fontSize: 30
              ),
            ),
            style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                padding: EdgeInsets.all(22.0),
                shape: CircleBorder()
            )
        )
    );
  }

  Widget btnZero(btnText) {
    return Container(
        padding: EdgeInsets.only(bottom: 10.0),
        child: ElevatedButton(
            onPressed: (){},
            child: Text(btnText,
              style: TextStyle(
                fontSize: 30.0
              )
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xff333333),
              padding: EdgeInsets.only(left:81, top:20, right:81, bottom:20),
              shape: StadiumBorder()
            )
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(bottom: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(children: [
              Expanded(
                child: Text('0',
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
                btnTop('AC'),
                btnTop('+/-'),
                btnTop('%'),
                btnRight('/'),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                btn('7'),
                btn('8'),
                btn('9'),
                btnRight('x'),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                btn('4'),
                btn('5'),
                btn('6'),
                btnRight('-'),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                btn('1'),
                btn('2'),
                btn('3'),
                btnRight('+'),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                btnZero('0'),
                btn('.'),
                btnRight('='),
              ],
            ),
          ],
        ),
      ),
    );
  }
}