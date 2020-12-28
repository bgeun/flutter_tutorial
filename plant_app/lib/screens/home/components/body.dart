import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/components/hearder_width_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[HeaderWithSearchBox(size: size)],
      ),
    );
  }
}
