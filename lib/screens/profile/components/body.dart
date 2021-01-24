import 'package:appEcommerce/constansts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'profile_menu.dart';
import 'profile_pict.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePict(),
        SizedBox(
          height: 20,
        ),
        ProfileMenu(icon: svgUserIcon,text: "My Account",),
        ProfileMenu(icon: svgBell,text: "Notification",),
        ProfileMenu(icon: svgSetting,text: "Setting",),
        ProfileMenu(icon: svgLogout,text: "Log Out",)
      ],
    );
  }
}
