import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)]);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 500);

// Image

const imageSplash1 = 'assets/images/splash_1.png';
const imageSplash2 = 'assets/images/splash_2.png';
const imageSplash3 = 'assets/images/splash_3.png';
const imageSuccess = 'assets/images/success.png';
const imageBanner1 = "assets/images/Image Banner 2.png";
const imageBanner2 = "assets/images/Image Banner 3.png";

//SVG
const svgMail = 'assets/icons/Mail.svg';
const svgLock = 'assets/icons/Lock.svg';
const svgError = 'assets/icons/Error.svg';
const svgFacebook = 'assets/icons/facebook-2.svg';
const svgGoogle = 'assets/icons/google-icon.svg';
const svgTwiter = 'assets/icons/twitter.svg';
const svgBell = 'assets/icons/Bell.svg';
const svgCart = 'assets/icons/Cart Icon.svg';
const svgFlash = "assets/icons/Flash Icon.svg";
const svgBill = "assets/icons/Bill Icon.svg";
const svgGame = "assets/icons/Game Icon.svg";
const svgGift = "assets/icons/Gift Icon.svg";
const svgDiscover = "assets/icons/Discover.svg";
const svgHeart = "assets/icons/Heart Icon_2.svg";
const svgStar = "assets/icons/Star Icon.svg";

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
