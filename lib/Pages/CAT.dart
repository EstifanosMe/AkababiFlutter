import 'package:flutter/material.dart';
import 'package:akababi/Pages/login.dart';
import 'package:akababi/Pages/GuestCAT.dart';
import 'dart:async';


class CAT extends StatefulWidget {
  @override
  State<CAT> createState() => _CATState();
}

class _CATState extends State<CAT> {
  @override
  /*Widget build(BuildContext context) => DefaultTabController(
    length: 3,
    child: Scaffold(
      appBar: AppBar(
        //title: Text(MyApp.title),
        //centerTitle: true,
        leading: SizedBox(
          child: Image.asset('images/1.jpg', width: 5000, height: 1000,),
        ),

        backgroundColor: Colors.white,
        bottom: TabBar(
          //isScrollable: true,
          indicatorColor: Colors.blue,
          indicatorWeight: 5,
          tabs: [
            Tab( child: Text('Sign Up', style: TextStyle(color: Colors.black),),),
            Tab( child: Text('Guest', style: TextStyle(color: Colors.black),),),
            Tab( child: Text('Login', style: TextStyle(color: Colors.black),),),
            //Tab(icon: Icon(Icons.settings), text: 'Settings'),
          ],
        ),
        elevation: 20,
        titleSpacing: 20,
      ),
      body: TabBarView(
        children: [
          buildPage('Sign Up Page'),
          buildPages("Guest Page"),
          buildPagess('Login Page'),
         // buildPage('Settings Page'),
        ],
      ),
    ),
  );
*/
  Widget build(BuildContext context) => Center(
    child: Align(
      alignment: Alignment.centerLeft,
      child: InkWell(
        onTap: () {},
          child: Column(
            children: [
              SizedBox( height: 50,),
              Ink.image(
                image: AssetImage('images/Assets/social.png'),
                height: 100,
                width: 10000,
                child: InkWell(
                  onTap: () {},
                  child: Center(
                    child: Text(
                      'Social' ,
                      style: TextStyle(fontSize: 20, color: Colors.white,),
                    ),
                  ),
                ),
              ),
              SizedBox( height: 30,),
              Ink.image(
                image: AssetImage('images/Assets/work.png'),
                height: 100,
                width: 1000,
                child: InkWell(
                  onTap: () {},
                  child: Center(
                    child: Text(
                      'Work',
                      style: TextStyle(fontSize: 20, color: Colors.white, ),
                    ),
                  ),
                ),
              ),
              SizedBox( height: 30,),
              Ink.image(
                image: AssetImage('images/Assets/people.png'),
                height: 100,
                width: 1000,
                child: InkWell(
                  onTap: () {},
                  child: Center(
                    child: Text(
                      'Both',
                      style: TextStyle(fontSize: 20, color: Colors.white, ),
                    ),
                  ),
                ),
              ),
            ],
          ),
      ),
    ),
  );
  /*buildPages(String text) => Center(
      child: Container(
          child: Text(
            'Guest',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 15,
            ),
          )));

  buildPagess(String text) => Center(
      child: Container(
        child: Text(
          'Log in',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 15,
          ),
        ),
      )
  );*/
}