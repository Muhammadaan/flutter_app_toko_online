
import 'package:appEcommerce/constansts.dart';
import 'package:appEcommerce/models/Cart.dart';
import 'package:flutter/material.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key key,
    @required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          SizedBox(
            width: 88,
            child: AspectRatio(
              aspectRatio: 0.88,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF5F6F9)),
                child: Image.asset(cart.product.images[0]),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Text(
                cart.product.title,
                style: TextStyle(fontSize: 16),
              ),
              Text.rich(TextSpan(
                  text: "\$ ${cart.product.price}",
                  style: TextStyle(color: kPrimaryColor),
                  children: [
                    TextSpan(
                        text: " x${cart.numOfitem}",
                        style: TextStyle(color: kSecondaryColor))
                  ]))
            ],
          )
        ],
      ),
    );
  }
}
