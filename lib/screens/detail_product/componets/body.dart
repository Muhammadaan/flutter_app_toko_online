import 'package:appEcommerce/components/button.dart';
import 'package:appEcommerce/components/rounded_icon_btn.dart';
import 'package:appEcommerce/components/top_rounded_container.dart';
import 'package:appEcommerce/constansts.dart';
import 'package:appEcommerce/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'colors_dots.dart';
import 'product_description.dart';
import 'product_image.dart';

class Body extends StatefulWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            ProductImage(product: widget.product),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Column(
                  children: [
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Column(
                        children: [
                          ProductDescription(
                            product: widget.product,
                            press: () {},
                          ),
                          TopRoundedContainer(
                              color: Color(0xFFF5F6F9),
                              child: Column(
                                children: [
                                  ColorDots(
                                    product: widget.product,
                                  ),
                                  SizedBox(height: 20,),
                                  TopRoundedContainer(
                                      color: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 20),
                                        child: DefaultButton(
                                          press: () {},
                                          text: "Add To cart",
                                        ),
                                      ))
                                ],
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
