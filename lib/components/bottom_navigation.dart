
import 'package:appEcommerce/constansts.dart';
import 'package:appEcommerce/screens/home/home.dart';
import 'package:appEcommerce/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../enums.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    print(selectedMenu);
    print("aa");
    final Color inActiveColor = Colors.grey;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 20,
                color: Colors.grey.withOpacity(0.10))
          ]),
      child: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: SvgPicture.asset(
              svgShop,
              color: MenuState.home == selectedMenu
                  ? kPrimaryColor
                  : inActiveColor,
            ),
            onPressed: () {

              Navigator.pushNamed(context, HomeScreeen.routeName);
            },
            color:
                MenuState.home == selectedMenu ? kPrimaryColor : inActiveColor,
          ),
          IconButton(
              icon: SvgPicture.asset(
                svgHeart,
                color: MenuState.favourite == selectedMenu
                    ? kPrimaryColor
                    : inActiveColor,
              ),
              onPressed: () {}),
          IconButton(
              icon: SvgPicture.asset(
                svgChat,
                color: MenuState.message == selectedMenu
                    ? kPrimaryColor
                    : inActiveColor,
              ),
              onPressed: () {}),
          IconButton(
            icon: SvgPicture.asset(
              svgUserIcon,
              color: MenuState.profile == selectedMenu
                  ? kPrimaryColor
                  : inActiveColor,
            ),
            onPressed: () {
              Navigator.pushNamed(context, ProfileScreen.routeName);
            },
          )
        ],
      )),
    );
  }
}
