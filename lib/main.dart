import 'package:flutter/material.dart';

import 'my_home_page.dart';
import 'counter/counter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Class yang tidak memegang state (stateless widget) => tugasnya menampilkan saja
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: CounterScreen()
    );
  }
}

