import 'package:flutter/material.dart';

class SaveWordScreen extends StatelessWidget {
  var saveWords = [];

  SaveWordScreen({this.saveWords});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Save Word'),
      ),
      body: Center(
          child: Text(
        saveWords.join(" -  "),
        style: TextStyle(fontSize: 40),
      )),
    );
  }
}
