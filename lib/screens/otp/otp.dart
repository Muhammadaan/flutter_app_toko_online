import 'package:appEcommerce/components/button.dart';
import 'package:appEcommerce/constansts.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = '/otp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "OTP Verification",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text("We sent your code to 6232-2344-3432"),
              SizedBox(
                height: 10,
              ),
              buildTimer(),
              SizedBox(
                height: 20,
              ),
              OtpForm(),
              SizedBox(
                height: 40,
              ),
              DefaultButton(
                press: () {},
                text: "Continue",
              ),
              Spacer(),
              Text("Resend OTP Code"),
               SizedBox(
                height: 20,
              ),
              
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expired in"),
        SizedBox(
          width: 10,
        ),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {
            print("AKHIR");
          },
        ),
      ],
    );
  }
}

class OtpForm extends StatefulWidget {
  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();

    super.dispose();
  }

  void nextField({String value, FocusNode focusnode}) {
    if (value.length == 1) {
      focusnode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 60,
            child: TextFormField(
              autofocus: true,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              onChanged: (value) {
                nextField(value: value, focusnode: pin2FocusNode);
              },
            ),
          ),
          SizedBox(
            width: 60,
            child: TextFormField(
              focusNode: pin2FocusNode,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              onChanged: (value) {
                nextField(value: value, focusnode: pin3FocusNode);
              },
            ),
          ),
          SizedBox(
            width: 60,
            child: TextFormField(
              focusNode: pin3FocusNode,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              onChanged: (value) {
                nextField(value: value, focusnode: pin4FocusNode);
              },
            ),
          ),
          SizedBox(
            width: 60,
            child: TextFormField(
              focusNode: pin4FocusNode,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              onChanged: (value) {
                pin4FocusNode.unfocus();
              },
            ),
          )
        ],
      ),
    );
  }
}
