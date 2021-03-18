import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'SaveWordScreen.dart';

class RandomWord extends StatefulWidget {
  @override
  _RandomWordState createState() => _RandomWordState();
}

class _RandomWordState extends State<RandomWord> {
  var saveWords = [];
  String randomWord = WordPair.random().asString;

  void _changeWord() {
    setState(() {
      randomWord = WordPair.random().asString;
    });
  }

  void _saveWord() {
    saveWords.add(randomWord);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SaveWordScreen(saveWords: saveWords)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tamvan dan berani"),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(randomWord,
            style: TextStyle(fontSize: 40, color: Colors.redAccent)),
        IconButton(
          icon: Icon(Icons.favorite_border),
          onPressed: _saveWord,
        )
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeWord,
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
