import 'package:flutter/material.dart';
import 'RandomWordScreen.dart';
import 'SaveWordScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nandar Sukmana",
      home: RandomWord(),
    );
  }
}
