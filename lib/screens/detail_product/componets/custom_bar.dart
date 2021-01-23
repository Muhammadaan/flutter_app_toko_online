import 'package:appEcommerce/components/rounded_icon_btn.dart';
import 'package:appEcommerce/constansts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends PreferredSize {
  CustomAppBar({@required this.ratting});

  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  final double ratting;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIconBtn(
              iconData: Icons.arrow_back_ios,
              press: () {
                Navigator.pop(context);
              },
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Row(
                children: [
                  Text(ratting.toString()),
                  SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset(svgStar)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
