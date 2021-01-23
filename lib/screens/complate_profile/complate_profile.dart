import 'package:appEcommerce/components/button.dart';
import 'package:appEcommerce/components/custom_suffix_icon.dart';
import 'package:appEcommerce/constansts.dart';
import 'package:appEcommerce/screens/otp/otp.dart';
import 'package:flutter/material.dart';

class ComplateProfile extends StatelessWidget {
  static String routeName = '/complate_profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Complate Profile',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('asdasd sadasdasda da sd ad as dad'),
                SizedBox(
                  height: 20,
                ),
                buildForm(),
                SizedBox(
                  height: 20,
                ),
                DefaultButton(
                  press: () {
                    Navigator.pushNamed(context, OtpScreen.routeName);
                  },
                  text: "Continue",
                ),
              ],
            ),
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
              hintText: "Enter your first name ",
              labelText: "First Name",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              // suffixIcon: CustomSuffixIcon(
              //   svgIcon: svgMail,
              // )
            )),
        SizedBox(
          height: 20,
        ),
        TextFormField(
            onTap: () {},
            decoration: InputDecoration(
              hintText: "Enter your last name ",
              labelText: "Last Name",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              // suffixIcon: CustomSuffixIcon(
              //   svgIcon: svgMail,
              // )
            )),
        SizedBox(
          height: 20,
        ),
        TextFormField(
            onTap: () {},
            decoration: InputDecoration(
              hintText: "Enter your phone number",
              labelText: "Phone Number",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              // suffixIcon: CustomSuffixIcon(
              //   svgIcon: svgMail,
              // )
            )),
        SizedBox(
          height: 20,
        ),
        TextFormField(
            onTap: () {},
            decoration: InputDecoration(
              hintText: "Enter your address",
              labelText: "Address",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              // suffixIcon: CustomSuffixIcon(
              //   svgIcon: svgMail,

              // )
            )),

        // Spacer(),
      ],
    );
  }
}
