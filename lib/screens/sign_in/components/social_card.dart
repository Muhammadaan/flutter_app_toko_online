
import 'package:appEcommerce/constansts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialContent extends StatelessWidget {
  const SocialContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialCard(
          svg: svgFacebook,
          press: () {},
        ),
        SizedBox(
          width: 10,
        ),
        SocialCard(
          svg: svgGoogle,
          press: () {},
        ),
        SizedBox(
          width: 10,
        ),
        SocialCard(
          svg: svgTwiter,
          press: () {},
        ),
      ],
    );
  }
}

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key key,
    this.svg,
    this.press,
  }) : super(key: key);

  final String svg;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        press();
      },
      child: Container(
        padding: EdgeInsets.all(10),
        height: 40,
        width: 40,
        decoration:
            BoxDecoration(color: Colors.grey[100], shape: BoxShape.circle),
        child: SvgPicture.asset(svg),
      ),
    );
  }
}
