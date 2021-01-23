
import 'package:appEcommerce/components/rounded_icon_btn.dart';
import 'package:appEcommerce/constansts.dart';
import 'package:appEcommerce/models/Product.dart';
import 'package:flutter/material.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key key,
    this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 0;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: Row(
          children: [
            ...List.generate(
                product.colors.length,
                (index) => ColorDot(
                    isSelected: selectedColor == index,
                    color: product.colors[index])),
            Spacer(),
            RoundedIconBtn(
              iconData: Icons.remove,
              press: () {},
            ),
            SizedBox(
              width: 10,
            ),
            RoundedIconBtn(
              iconData: Icons.add,
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    @required this.color,
    this.isSelected,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(8),
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        border:
            Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}