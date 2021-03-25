import 'package:flutter/material.dart';
import 'package:practice_01/screens/details/details_screen.dart';

import '../../../constants.dart';

class PictureAndInfo extends StatelessWidget {
  const PictureAndInfo({
    Key key,
    this.image,
    this.name,
    this.brand,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, name, brand;
  final double price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          //top: kDefaultPadding * 2,
          bottom: kDefaultPadding / 2.5),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: press,
            child: Image.asset(
              image,
              height: size.height * 0.17,
            ),
          ),
          Container(
            height: size.width * 0.172,
            padding: EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.23),
                ),
              ],
            ),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "$name\n",
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                        text: brand,
                        style: TextStyle(
                          color: Colors.red.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Text(
                  "\$$price",
                  style: Theme.of(context)
                      .textTheme
                      .button
                      .copyWith(color: kPrimaryColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
