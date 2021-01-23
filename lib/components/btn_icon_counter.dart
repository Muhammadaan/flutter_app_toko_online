
import 'package:appEcommerce/constansts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconbtnWithCounter extends StatelessWidget {
  final String svgsrc;
  final String numCounter;
  final GestureTapCallback press;

  const IconbtnWithCounter({
    Key key,
    @required this.svgsrc,
    this.numCounter = '0',
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white)),
              child: SvgPicture.asset(svgsrc),
            ),
          ),
          if (numCounter != '0')
            Positioned(
              right: 0,
              top: 0,
              child: SizedBox(
                width: 15,
                height: 15,
                child: Container(
                  child: Text(
                    numCounter,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        fontWeight: FontWeight.bold),
                  ),
                  decoration:
                      BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                ),
              ),
            )
        ],
      ),
    );
  }
}
