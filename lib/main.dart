import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodie/Ui/home/home_page.dart';
import 'package:foodie/Ui/splash_screen.dart';
import 'package:get/get.dart';

import 'Ui/sign_in.dart';
import 'Ui/sign_up.dart';

void main() => runApp(Foodie());

class Foodie extends StatefulWidget {
  Foodie({Key? key}) : super(key: key);

  @override
  _FoodieState createState() => _FoodieState();
}

class _FoodieState extends State<Foodie> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () => Get.toNamed('/sign-in'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      routes: {
        '/': (context) => SplashScreen(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/main-page': (context) => MainPage(),
      },
    );
  }
}
