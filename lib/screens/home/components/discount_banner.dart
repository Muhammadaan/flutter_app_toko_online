import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.blueAccent, borderRadius: BorderRadius.circular(20)),
        child: Text.rich(TextSpan(
            text: "A Summer Supprise \n",
            style: TextStyle(color: Colors.white),
            children: [
              TextSpan(
                  text: "Cashback 20%",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
            ])),
      ),
    );
  }
}
