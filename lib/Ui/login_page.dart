import 'package:flutter/material.dart';
import 'package:foodie/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Stack(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 382,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
            ),
            Positioned(
              top: 330,
              left: 89,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
            Positioned(
              top: 330,
              left: 263,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Sign-up',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            )
          ]),
          SizedBox(
            height: 64,
          ),
          Container(
            width: 314,
            height: 59,
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: 'Email address', border: UnderlineInputBorder()),
            ),
          ),
          SizedBox(
            height: 46,
          ),
          Container(
            width: 314,
            height: 59,
            child: TextFormField(
              readOnly: false,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Password', border: UnderlineInputBorder()),
            ),
          )
        ],
      ),
    );
  }
}
