import 'package:appEcommerce/constansts.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {

  final String text;
  final Function press;

  const DefaultButton({
    Key key, this.text, this.press,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)),
          color: kPrimaryColor,
          onPressed: press,
          child: Text(
            text,
            style:
                TextStyle(fontSize: 15, color: Colors.white),
          )),
    );
  }
}
