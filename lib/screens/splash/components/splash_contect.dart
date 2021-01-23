import 'package:appEcommerce/constansts.dart';
import 'package:flutter/material.dart';

class SplahContent extends StatelessWidget {
  final String text, image;

  const SplahContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "Tokoku",
          style: TextStyle(
              color: kPrimaryColor, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(),
        Image.asset(
          image,
          height: 300,
        )
      ],
    );
  }
}
