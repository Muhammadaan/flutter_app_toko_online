
import 'package:appEcommerce/constansts.dart';
import 'package:appEcommerce/models/Product.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatefulWidget {
  const ProductImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductImageState createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 238,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[selectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product.images.length,
                (index) => buildSmallPriview(index))
          ],
        )
      ],
    );
  }

  Widget buildSmallPriview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.all(5),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            border: Border.all(
                color:
                    selectedImage == index ? kPrimaryColor : kSecondaryColor),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
