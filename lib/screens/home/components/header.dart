
import 'package:appEcommerce/components/btn_icon_counter.dart';
import 'package:appEcommerce/constansts.dart';
import 'package:appEcommerce/screens/home/components/search_field.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconbtnWithCounter(
            press: () {},
            svgsrc: svgCart,
          ),
          IconbtnWithCounter(
            press: () {},
            svgsrc: svgBell,
            numCounter: '3',
          )
        ],
      ),
    );
  }
}
