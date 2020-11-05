import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Well Made'),
          ),
          body: Center(
            child: Image(
                image: NetworkImage(
                    "https://www.converse.co.kr/cmsstatic/Converse.png")),
          )),
    );
  }
}
