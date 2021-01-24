import 'package:appEcommerce/screens/cart/cart_screen.dart';
import 'package:appEcommerce/screens/complate_profile/complate_profile.dart';
import 'package:appEcommerce/screens/detail_product/detail_product.dart';
import 'package:appEcommerce/screens/forgot_password/forgot_password.dart';
import 'package:appEcommerce/screens/home/home.dart';
import 'package:appEcommerce/screens/loggin_success/login_success.dart';
import 'package:appEcommerce/screens/otp/otp.dart';
import 'package:appEcommerce/screens/profile/profile_screen.dart';
import 'package:appEcommerce/screens/sign_in/sign_in.dart';
import 'package:appEcommerce/screens/sign_up/sign_up.dart';
import 'package:appEcommerce/screens/splash/splach_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUp.routeName: (context) => SignUp(),
  ForgotPassword.routeName: (context) => ForgotPassword(),
  OtpScreen.routeName: (context) => OtpScreen(),
  ComplateProfile.routeName: (context) => ComplateProfile(),
  LoginSuccess.routeName: (context) => LoginSuccess(),
  HomeScreeen.routeName : (context) => HomeScreeen(),
  DetailProduct.routeName : (context) => DetailProduct(),
  CartScreen.routeName : (context) => CartScreen(),
  ProfileScreen.routeName : (context) => ProfileScreen()
};
