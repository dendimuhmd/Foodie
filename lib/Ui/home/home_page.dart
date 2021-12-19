import 'package:flutter/material.dart';
import 'package:foodie/theme.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget bottomAdd() {
      return FloatingActionButton(
        onPressed: () {},
        child: Image.asset(
          'assets/icon_chart.png',
          height: 20,
          width: 20,
        ),
      );
    }

    Widget customButtom() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 16,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              currentIndex: currentIndex,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              items: [
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: Image.asset(
                        'assets/Home.png',
                        color: currentIndex == 0
                            ? primaryColor
                            : Color(0xff808191),
                        width: 21,
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: Image.asset(
                        'assets/chat_icon.png',
                        color: currentIndex == 1
                            ? primaryColor
                            : Color(0xff808191),
                        width: 20,
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: Image.asset(
                        'assets/wishlist.png',
                        color: currentIndex == 2
                            ? primaryColor
                            : Color(0xff808191),
                        width: 18,
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: Image.asset(
                        'assets/profile.png',
                        color: currentIndex == 3
                            ? primaryColor
                            : Color(0xff808191),
                        width: 18,
                      ),
                    ),
                    label: ''),
              ]),
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: customButtom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: bottomAdd(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Delicious\nfood for you',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 34,
                )),
          )
        ],
      ),
    );
  }
}
