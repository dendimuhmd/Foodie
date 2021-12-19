import 'package:flutter/material.dart';
import 'package:foodie/Ui/home/home_page.dart';
import 'package:foodie/Ui/sign_up.dart';
import 'package:foodie/theme.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget heading() {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: primaryTextStyle.copyWith(
                      color: Colors.black, fontSize: 18),
                ),
              ),
              TextButton(
                onPressed: () => Get.toNamed('/sign-up'),
                child: Text(
                  'Sign-up',
                  style: primaryTextStyle.copyWith(
                      color: Colors.black, fontSize: 18),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget emailInput() {
      return Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          margin: EdgeInsets.only(top: 64),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.white),
            child: Center(
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 17,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Your Email Address',
                    ),
                  ))
                ],
              ),
            ),
          ));
    }

    Widget passwordInput() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 46),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: Center(
                child: Row(
                  children: [
                    Icon(
                      Icons.lock,
                      size: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Your Password'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextButton(
                onPressed: () {},
                child: Text('Forgot passcode?',
                    style: primaryTextStyle.copyWith(fontSize: 17)),
              )),
        ],
      );
    }

    Widget button() {
      return Container(
          // padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 50, top: 136),
          width: 314,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xffFA4A0C),
          ),
          child: Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MainPage();
                }));
              },
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ));
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [heading(), emailInput(), passwordInput(), button()],
          ),
        ),
      ),
    );
  }
}



// Stack(children: [
//               Container(
                
//               ),
//               
//             ]),