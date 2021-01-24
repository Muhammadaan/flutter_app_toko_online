
import 'package:appEcommerce/constansts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key key,
    @required this.icon,
     @required this.text,
  }) : super(key: key);
  final String icon, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
        onPressed: () {},
        color: Color(0xFFF5F6F9),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              color: kPrimaryColor,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(child: Text(text, style: TextStyle(fontSize: 18))),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      ),
    );
  }
}
