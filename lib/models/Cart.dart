import 'package:appEcommerce/models/Product.dart';
import 'package:flutter/material.dart';

class Cart {
  final Product product;
  final int numOfitem;

  Cart({@required this.product, @required this.numOfitem});
}

List<Cart> demoCartrs = [
  Cart(product: demoProducts[0], numOfitem: 2),
  Cart(product: demoProducts[1], numOfitem: 1),
  Cart(product: demoProducts[2], numOfitem: 1),
  Cart(product: demoProducts[0], numOfitem: 2),
  Cart(product: demoProducts[1], numOfitem: 1),
  Cart(product: demoProducts[2], numOfitem: 1),
   Cart(product: demoProducts[0], numOfitem: 2),
  Cart(product: demoProducts[1], numOfitem: 1),
  Cart(product: demoProducts[2], numOfitem: 1)
];
