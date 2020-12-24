import 'package:ebook_app/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import '../consttants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/main_page_bg.png"),
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: RichText(
                  text: TextSpan(
                style: Theme.of(context).textTheme.display1,
                children: [
                  TextSpan(text: "What are you \nreading"),
                  TextSpan(
                      text: "today?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ))
                ],
              )),
            ),
            SizedBox(height: 30),
            Container(
              height: 245,
              width: 202,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 221,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(29),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 33,
                              color: kShadowColor,
                            )
                          ]),
                    ),
                  ),
                  Image.asset(
                    "assets/images/book-1.png",
                    width: 150,
                  ),
                  Positioned(
                    top: 35,
                    right: 10,
                    child: Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.favorite_border),
                          onPressed: () {},
                        ),
                        BookRating(
                          score: 4.9,
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: 160,
                      child: Container(
                        height: 85,
                        width: 202,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 24),
                              child: RichText(
                                maxLines: 2,
                                text: TextSpan(
                                  style: TextStyle(
                                    color: kBlackColor,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "Crushing & Influence\n",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Gary Venchuk",
                                      style: TextStyle(
                                        color: kLightBlackColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 101,
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    alignment: Alignment.center,
                                    child: Text("Details"),
                                  ),
                                ),
                                Expanded(
                                  child: TwoSideRoundedButton(
                                    text: "Read",
                                    press: () {},
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TwoSideRoundedButton extends StatelessWidget {
  final String text;
  final double radious;
  final Function press;
  const TwoSideRoundedButton({
    Key key,
    this.text,
    this.radious,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: kBlackColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(radious),
              bottomRight: Radius.circular(radious),
            )),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
