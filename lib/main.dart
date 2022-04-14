import 'package:flutter/material.dart';
import 'package:akababi/Pages/signup_page.dart';
import 'package:akababi/Pages/app_bar.dart';
//import 'Sign Up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Akababi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyAppBar(),
    );
  }
}
