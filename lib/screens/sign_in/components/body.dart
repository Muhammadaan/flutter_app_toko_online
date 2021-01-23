import 'package:appEcommerce/components/button.dart';
import 'package:appEcommerce/components/custom_suffix_icon.dart';
import 'package:appEcommerce/constansts.dart';
import 'package:appEcommerce/screens/sign_in/components/sign_form.dart';
import 'package:appEcommerce/screens/sign_in/components/social_card.dart';
import 'package:appEcommerce/screens/sign_up/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "Sign in with your email Passsword \n or Continue woth social media"),
                SizedBox(
                  height: 20,
                ),
                SignForm(),
                SizedBox(
                  height: 20,
                ),
                SocialContent(),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't Have an account ?"),
                    GestureDetector(
                      onTap: () {
                        
                        Navigator.pushNamed(context, SignUp.routeName);
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: kPrimaryColor, fontSize: 16),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
