import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: TextStyle(
                fontSize: _counter.toDouble() + 20,
                color: _counter < 20 ? Colors.blue : Colors.red,
                
              )
            ),
            Text(
              '아래 버튼을 눌러주세요.',
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  color: Colors.red,
                  onPressed: () => (_incrementCounter()),
                  child: Text(
                    '증가',
                    style: TextStyle(color: Colors.white)
                  )

                ),
                FlatButton(
                  color: Colors.blue,
                  onPressed: () => (_decrementCounter()),
                  child: Text(
                    '감소',
                    style: TextStyle(color: Colors.white)
                  )
                )
              ]
            ),
          ],
        ),
      ),
    );
  }
}
