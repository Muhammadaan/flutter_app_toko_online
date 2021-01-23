import 'package:appEcommerce/components/custom_suffix_icon.dart';
import 'package:appEcommerce/constansts.dart';
import 'package:appEcommerce/screens/sign_up/components/body.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  static String routeName = '/sign_up';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Body(),
    );
  }
}
