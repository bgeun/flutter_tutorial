import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice_01/constants.dart';
import 'package:practice_01/screens/more/components/picture_and_info.dart';

import 'brand_name.dart';

class MoreBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Geun's Shoes👟",
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          BrandName(
            brand: "Nike",
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                PictureAndInfo(
                  image: "assets/images/J1_darkmocha.png",
                  name: "Jordan1 \nDarkmocha",
                  brand: "nike",
                  price: 44.0,
                ),
                PictureAndInfo(
                  image: "assets/images/dunkLow_black.png",
                  name: "Dunk Low\nBlack",
                  brand: "nike",
                  price: 50.0,
                ),
                PictureAndInfo(
                  image: "assets/images/pimaone_force.png",
                  name: "Air Force 1 Low\nPara-Noise 2.0",
                  brand: "nike",
                  price: 55.0,
                )
              ],
            ),
          ),
          BrandName(
            brand: "New Balance",
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                PictureAndInfo(
                  image: "assets/images/992.png",
                  name: "992 MadeinUSA\nGrey",
                  brand: "new balance",
                  price: 45.0,
                ),
                PictureAndInfo(
                  image: "assets/images/327_casa.png",
                  name: "Casablance 327\nGreen",
                  brand: "new balance",
                  price: 50.0,
                ),
                PictureAndInfo(
                  image: "assets/images/990v3.png",
                  name: "990v3\ntriple black",
                  brand: "new balance",
                  price: 55.0,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
