import 'package:flutter/material.dart';
import 'package:practice_01/constants.dart';

class BrandName extends StatelessWidget {
  const BrandName({
    Key key,
    this.brand,
  }) : super(key: key);

  final String brand;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(
          top: kDefaultPadding,
          bottom: kDefaultPadding / 7,
          left: kDefaultPadding),
      height: 45,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: kDefaultPadding / 1.5),
            child: Text(
              "$brand",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.3),
            ),
          )
        ],
      ),
    );
  }
}
