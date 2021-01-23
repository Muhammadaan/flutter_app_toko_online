import 'package:appEcommerce/components/button.dart';
import 'package:appEcommerce/components/custom_suffix_icon.dart';
import 'package:appEcommerce/constansts.dart';
import 'package:appEcommerce/screens/complate_profile/complate_profile.dart';
import 'package:appEcommerce/screens/sign_in/components/social_card.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Register Account",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Complate your detail o continue with sosial media'),
              SizedBox(
                height: 40,
              ),
              buildForm(),
              SizedBox(
                height: 20,
              ),
              DefaultButton(
                press: () {
                  // if (_formKey.currentState.validate()) {
                  //   _formKey.currentState.save();
                  // }

                  Navigator.pushNamed(context, ComplateProfile.routeName);
                },
                text: "Continue",
              ),
              SizedBox(
                height: 40,
              ),
              SocialContent()
            ],
          ),
        ),
      ),
    );
  }

  Column buildForm() {
    return Column(
      children: [
        TextFormField(
            onTap: () {},
            decoration: InputDecoration(
                hintText: "Enter Your Email ",
                labelText: "Email",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: CustomSuffixIcon(
                  svgIcon: svgMail,
                ))),
        SizedBox(
          height: 20,
        ),
        TextFormField(
            onTap: () {},
            decoration: InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: CustomSuffixIcon(
                  svgIcon: svgLock,
                ))),
        SizedBox(
          height: 20,
        ),
        TextFormField(
            onTap: () {},
            decoration: InputDecoration(
                hintText: "Confirm Password",
                labelText: "Confirm Password",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: CustomSuffixIcon(
                  svgIcon: svgLock,
                )))
      ],
    );
  }
}
