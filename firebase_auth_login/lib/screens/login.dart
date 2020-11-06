import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            color: Colors.red,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
              Stack(
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.amber,
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.black,
                  )
                ],
              ),
              Text("Don't Have an Account? Create One"),
              Container(
                height: size.height * 0.05,
              )
            ],
          )
        ],
      ),
    );
  }
}
