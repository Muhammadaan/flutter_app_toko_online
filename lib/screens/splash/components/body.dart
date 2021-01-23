import 'package:appEcommerce/components/button.dart';
import 'package:appEcommerce/constansts.dart';
import 'package:appEcommerce/screens/sign_in/sign_in.dart';
import 'package:appEcommerce/screens/splash/components/splash_contect.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                  flex: 4,
                  child: PageView.builder(
                      onPageChanged: (value) {
                        setState(() {
                          currentPage = value;
                        });
                      },
                      itemCount: splashData.length,
                      itemBuilder: (context, index) => SplahContent(
                            image: splashData[index]['image'],
                            text: splashData[index]['text'],
                          ))),
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            splashData.length, (index) => buildDot(index: index)),
                      ),
                      Spacer(),

                      DefaultButton(
                        press: (){
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        },
                        text: "Continue",
                      ),
                      Spacer(),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 10,
      width: currentPage == index ? 25 : 10,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : Colors.grey,
          borderRadius: BorderRadius.circular(10)),
    );
  }
}

