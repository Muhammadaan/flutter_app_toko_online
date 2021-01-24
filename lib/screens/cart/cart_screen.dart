import 'package:appEcommerce/components/button.dart';
import 'package:appEcommerce/constansts.dart';
import 'package:appEcommerce/models/Cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'componets/body.dart';

class CartScreen extends StatelessWidget {
  static String routeName = '/cart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: ChekoutCard(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: Column(
        children: [
          Text("Your Cart"),
          Text(
            "${demoCartrs.length} item",
            style: TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}

class ChekoutCard extends StatelessWidget {
  const ChekoutCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      // height: 174,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                offset: Offset(0, -15),
                blurRadius: 20)
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10)),
                child: SvgPicture.asset(svgReceipt),
              ),
              Spacer(),
              Text("Add Voucher code"),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 12,
                color: kPrimaryColor,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(text: "Total : \n", children: [
                  TextSpan(text: "\$ 500.00", style: TextStyle(fontSize: 20))
                ]),
              ),
              SizedBox(
                width: 150,
                child: DefaultButton(
                  press: (){},
                  text: "Add To Cart",
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
