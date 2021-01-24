import 'package:appEcommerce/constansts.dart';
import 'package:appEcommerce/routes.dart';
import 'package:appEcommerce/screens/profile/profile_screen.dart';
import 'package:appEcommerce/screens/splash/splach_screen.dart';
import 'package:appEcommerce/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: buildThemeData(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }

  
}
