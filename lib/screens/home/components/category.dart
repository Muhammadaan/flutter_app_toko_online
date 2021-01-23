
import 'package:appEcommerce/constansts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": svgFlash, "text": "Flash Sale"},
      {"icon": svgBill, "text": "Bill"},
      {"icon": svgGame, "text": "Game"},
      {"icon": svgGift, "text": "Daily Gift"},
      {"icon": svgDiscover, "text": "More"}
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              categories.length,
              (index) => CategoryCard(
                  icon: categories[index]["icon"],
                  text: categories[index]["text"],
                  press: () {}))
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
          width: 55,
          child: Column(
            children: [
              AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color(0xffffecdf),
                        borderRadius: BorderRadius.circular(10)),
                    child: SvgPicture.asset(icon),
                  )),
              SizedBox(
                height: 5,
              ),
              Text(
                text,
                textAlign: TextAlign.center,
              )
            ],
          )),
    );
  }
}
