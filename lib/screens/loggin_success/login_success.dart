import 'package:appEcommerce/components/button.dart';
import 'package:appEcommerce/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:appEcommerce/constansts.dart';

class LoginSuccess extends StatelessWidget {
  static String routeName = "/login_success";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 40),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Image.asset(imageSuccess),
            SizedBox(
              height: 40,
            ),
            Text(
              "Loggin Success",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: DefaultButton(
                press: () {
                  Navigator.pushNamed(context, HomeScreeen.routeName);
                },
                text: "Continue",
              ),
            )
          ],
        ),
      ),
    );
  }
}
