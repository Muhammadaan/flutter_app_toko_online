import 'package:appEcommerce/components/bottom_navigation.dart';
import 'package:appEcommerce/components/selection_tite.dart';
import 'package:appEcommerce/constansts.dart';
import 'package:appEcommerce/enums.dart';
import 'package:appEcommerce/models/Product.dart';

import 'package:appEcommerce/screens/home/components/product_populer.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/category.dart';
import 'components/discount_banner.dart';
import 'components/header.dart';
import 'components/special_offer.dart';

class HomeScreeen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Header(),
                SizedBox(
                  height: 20,
                ),
                DiscountBanner(),
                SizedBox(
                  height: 20,
                ),
                Categories(),
                SizedBox(
                  height: 20,
                ),
                SpecialOffer(),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                ProductPopuler()
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
