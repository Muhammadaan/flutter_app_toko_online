import 'package:appEcommerce/components/selection_tite.dart';
import 'package:appEcommerce/constansts.dart';
import 'package:flutter/material.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectionTitle(
          press: () {},
          text: "Special For You",
        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialCard(
                press: () {},
                category: "SmartPhone",
                numOfBrand: 12,
                image: imageBanner1,
              ),
              SpecialCard(
                press: () {},
                category: "SmartPhone",
                numOfBrand: 12,
                image: imageBanner2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialCard extends StatelessWidget {
  const SpecialCard({
    Key key,
    @required this.category,
    @required this.image,
    @required this.numOfBrand,
    @required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrand;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          height: 100,
          width: 242,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.black.withOpacity(0.50),
                        Colors.black.withOpacity(0.15)
                      ])),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text.rich(TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                            text: "$category \n",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        TextSpan(text: "$numOfBrand Brand")
                      ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
