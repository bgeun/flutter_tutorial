import 'package:flutter/material.dart';
import 'package:practice_01/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key key,
    this.text1,
    this.text2,
  }) : super(key: key);

  final String text1, text2;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: 84,
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
              ),
            ),
            color: kPrimaryColor,
            onPressed: () {},
            child: Text(
              text1,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {},
            child: Text(text2),
          ),
        ),
      ],
    );
  }
}
