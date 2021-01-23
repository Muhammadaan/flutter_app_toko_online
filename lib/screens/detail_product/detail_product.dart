import 'package:appEcommerce/components/rounded_icon_btn.dart';
import 'package:appEcommerce/constansts.dart';
import 'package:appEcommerce/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'componets/body.dart';
import 'componets/custom_bar.dart';

class DetailProduct extends StatefulWidget {
  static String routeName = "/detail_product";

  @override
  _DetailProductState createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(
        ratting: arguments.product.rating,
      ),
      body: Body(
        product: arguments.product,
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}
