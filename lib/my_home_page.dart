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













// class Homepage extends StatefulWidget {
//   @override
//   _State createState() => _State();
// }
//
// class _State extends State<Homepage> {
//   dynamic text ='0';
//   double numOne = 0;
//   double numTwo = 0;
//
//   dynamic result = '';
//   dynamic finalResult = '';
//   dynamic opr = '';
//   dynamic preOpr = '';
//
//
//
//   void calculation(btnText) {
//
//
//     if(btnText  == 'C') {
//       text ='0';
//       numOne = 0;
//       numTwo = 0;
//       result = '';
//       finalResult = '';
//       opr = '';
//       preOpr = '';
//
//     } else if( opr == '=' && btnText == '=') {
//
//       if(preOpr == '+') {
//         finalResult = add();
//       } else if( preOpr == '-') {
//         finalResult = sub();
//       } else if( preOpr == 'x') {
//         finalResult = mul();
//       } else if( preOpr == '/') {
//         finalResult = div();
//       }
//
//     } else if(btnText == '+' || btnText == '-' || btnText == 'x' || btnText == '/' || btnText == '=') {
//
//       if(numOne == 0) {
//         numOne = double.parse(result);
//       } else {
//         numTwo = double.parse(result);
//       }
//
//       if(opr == '+') {
//         finalResult = add();
//       } else if( opr == '-') {
//         finalResult = sub();
//       } else if( opr == 'x') {
//         finalResult = mul();
//       } else if( opr == '/') {
//         finalResult = div();
//       }
//       preOpr = opr;
//       opr = btnText;
//       result = '';
//     }
//     else if(btnText == '%') {
//       result = numOne / 100;
//       finalResult = doesContainDecimal(result);
//     } else if(btnText == '.') {
//       if(!result.toString().contains('.')) {
//         result = result.toString()+'.';
//       }
//       finalResult = result;
//     }
//
//     else if(btnText == '+/-') {
//       result.toString().startsWith('-') ? result = result.toString().substring(1): result = '-'+result.toString();
//       finalResult = result;
//
//     }
//
//     else {
//       result = result + btnText;
//       finalResult = result;
//     }
//
//
//     setState(() {
//       text = finalResult;
//     });
//
//   }
//
//
//   String add() {
//     result = (numOne + numTwo).toString();
//     numOne = double.parse(result);
//     return doesContainDecimal(result);
//   }
//
//   String sub() {
//     result = (numOne - numTwo).toString();
//     numOne = double.parse(result);
//     return doesContainDecimal(result);
//   }
//   String mul() {
//     result = (numOne * numTwo).toString();
//     numOne = double.parse(result);
//     return doesContainDecimal(result);
//   }
//   String div() {
//     result = (numOne / numTwo).toString();
//     numOne = double.parse(result);
//     return doesContainDecimal(result);
//   }
//
//
//   String doesContainDecimal(dynamic result) {
//
//     if(result.toString().contains('.')) {
//       List<String> splitDecimal = result.toString().split('.');
//       if(!(int.parse(splitDecimal[1]) > 0))
//         return result = splitDecimal[0].toString();
//     }
//     return result;
//   }
//
// }