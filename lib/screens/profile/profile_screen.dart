import 'package:appEcommerce/components/bottom_navigation.dart';
import 'package:appEcommerce/constansts.dart';
import 'package:appEcommerce/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavigation(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
