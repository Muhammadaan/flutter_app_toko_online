import 'package:appEcommerce/components/product_card.dart';
import 'package:appEcommerce/components/selection_tite.dart';
import 'package:appEcommerce/models/Product.dart';
import 'package:appEcommerce/screens/detail_product/detail_product.dart';
import 'package:flutter/material.dart';

class ProductPopuler extends StatelessWidget {
  const ProductPopuler({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectionTitle(
          press: () {},
          text: "Popular Product",
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                  demoProducts.length,
                  (index) => ProductCard(
                        product: demoProducts[index],
                        press: () => Navigator.pushNamed(
                            context, DetailProduct.routeName,
                            arguments: ProductDetailsArguments(
                                product: demoProducts[index])),
                      )),
            ],
          ),
        ),
      ],
    );
  }
}
