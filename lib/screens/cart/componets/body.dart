import 'package:appEcommerce/constansts.dart';
import 'package:appEcommerce/models/Cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'cart_item.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemCount: demoCartrs.length,
        itemBuilder: (context, index) => Dismissible(
          onDismissed: (direction) {
            setState(() {
              demoCartrs.removeAt(index);
            });
          },
          direction: DismissDirection.endToStart,
          key: Key(demoCartrs[index].product.id.toString()),
          background: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red.withOpacity(0.4)),
            child: Row(
              children: [Spacer(), SvgPicture.asset(svgTrash)],
            ),
          ),
          child: CartItemCard(
            cart: demoCartrs[index],
          ),
        ),
      ),
    );
  }
}
