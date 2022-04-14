import 'package:flutter/material.dart';
import 'signup_page.dart';
import 'login.dart';
import 'GuestCAT.dart';
import 'CAT.dart';

class MyAppBar extends StatefulWidget {
  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  List<Color> _colors = [
    Colors.grey,
    Colors.lightBlue,
  ];
  int _currentIndex = 0;
  _onChanged() {
    int _colorCount = _colors.length;

    setState(() {
      if (_currentIndex == _colorCount - 1) {
        _currentIndex = 0;
      } else {
        _currentIndex += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          leadingWidth: 100,
          leading: Container(
              // decoration:
              //     BoxDecoration(border: Border.all(color: Colors.black)),
              // width: 500,
              // height: 150,
              child: Image.asset(
            "images/1.jpg",
          )),
          bottom: TabBar(labelColor: _colors[_currentIndex], tabs: [
            Tab(
              text: 'Sign up',
            ),
            Tab(
              text: 'Guest',
            ),
            Tab(
              text: 'Login',
            )
          ]),
        ),
        body: TabBarView(children: [
          SignUpPage(),
          // Center(
          //   child: RaisedButton(onPressed: _onChanged, child: Container(
          //     decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          //     child: Text('this is sign up page'))),
          // ),
          Guest(),
          // Center(
          //   child: RaisedButton(onPressed: _onChanged, child: RadioButtonSex()),
          // ),
          Login()
          // Center(
          //   child: RaisedButton(onPressed: _onChanged, child: Login()),
          // )
        ]),
      ));
}

// class ChangeTextColor extends StatefulWidget {
//   @override
//   ChangeTextColorState createState() {
//     return new ChangeTextColorState();
//   }
// }

// class ChangeTextColorState extends State<ChangeTextColor> {
  

// }
