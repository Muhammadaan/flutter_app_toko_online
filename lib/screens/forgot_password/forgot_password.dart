import 'package:appEcommerce/components/button.dart';
import 'package:appEcommerce/components/custom_suffix_icon.dart';
import 'package:appEcommerce/constansts.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  static String routeName = 'forgot_password';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Forgot Password",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Enter ypur email adasdadasdad asdas daasdasd asd"),
                SizedBox(
                  height: 20,
                ),
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
                DefaultButton(
                  press: () {
                    // if (_formKey.currentState.validate()) {
                    //   _formKey.currentState.save();
                    // }
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
}
