import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:foodie/Ui/login_page.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: InkWell(
          onTap: () => Get.to(LoginPage()),
          child: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(top: 650),
              width: 314,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Text(
                'Get started',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.red, fontSize: 17),
              )),
        ),
      ),
    );
  }
}
