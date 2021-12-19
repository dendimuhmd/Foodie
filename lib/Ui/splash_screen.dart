import 'package:flutter/material.dart';
import 'package:foodie/Ui/sign_in.dart';
import 'package:foodie/theme.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryTextColor,
    );
  }
}
