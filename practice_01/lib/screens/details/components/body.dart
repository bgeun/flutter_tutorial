import 'package:flutter/material.dart';
import 'package:practice_01/constants.dart';
import 'package:practice_01/screens/details/components/bottom_button.dart';
import 'package:practice_01/screens/details/components/title_and_price.dart';

import 'image_and_icons.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 440,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          BottomButton(
            text1: "Buy now",
            text2: "Description",
          ),
        ],
      ),
    );
  }
}
