import 'package:flutter/material.dart';
import 'package:practice_01/screens/home/components/featured_plants.dart';
import 'package:practice_01/screens/home/components/header_with_searchbox.dart';
import 'package:practice_01/constants.dart';

import '../../../components/../screens/home/components/recomend_plants.dart';
import '../../../components/../screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provide us total height width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recomended",
            press: () {},
          ),
          // It will cover 40% of our total width
          RecomendsPlants(),
          TitleWithMoreBtn(
            title: "Featured Plants",
            press: () {},
          ),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
