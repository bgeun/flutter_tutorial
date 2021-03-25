import 'package:flutter/material.dart';
import 'package:practice_01/constants.dart';
import 'package:practice_01/screens/home/home_screen.dart';
import 'package:practice_01/screens/more/components/picture_and_info.dart';
import 'package:practice_01/screens/more/components/shoes/jordan1.dart';
import '../more_screen.dart';
import 'brand_name.dart';

class MoreBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.08),
      appBar: AppBar(
        title: Text(
          "Geun's Shoes👟",
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Jordan1(),
                        ),
                      );
                    },
                  ),
                  PictureAndInfo(
                    image: "assets/images/dunkLow_black.png",
                    name: "Dunk Low\nBlack",
                    brand: "nike",
                    price: 50.0,
                    press: () {},
                  ),
                  PictureAndInfo(
                    image: "assets/images/pimaone_force.png",
                    name: "Air Force 1 Low\nPara-Noise 2.0",
                    brand: "nike",
                    price: 55.0,
                    press: () {},
                  )
                ],
              ),
            ),
            BrandName(
              brand: "New Balance",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SingleChildScrollView(
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
            ),
            BrandName(
              brand: "Asics",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PictureAndInfo(
                      image: "assets/images/Iab.png",
                      name: "Asisc x Iab\n Gel Venture",
                      brand: "asics",
                      price: 35.0,
                    ),
                    PictureAndInfo(
                      image: "assets/images/gel1090.png",
                      name: "Asisc x AB\nGel 1090",
                      brand: "asics",
                      price: 42.0,
                    ),
                    PictureAndInfo(
                      image: "assets/images/kiko_geldelba.png",
                      name: "Asisc x KIKO\nGel Delva 6",
                      brand: "asics",
                      price: 40.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'shop'),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'my page'),
        ],
      ),
    );
  }
}
