
import 'package:appEcommerce/constansts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePict extends StatelessWidget {
  const ProfilePict({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(imageProfile),
          ),
          Positioned(
            right: -12,
            bottom: 0,
            child: SizedBox(
              width: 46,
              height: 46,
              child: FlatButton(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(50)),
                  color: Color(0xFFF5F6F9),
                  onPressed: () {},
                  child: SvgPicture.asset(svgCamera)),
            ),
          )
        ],
      ),
    );
  }
}
