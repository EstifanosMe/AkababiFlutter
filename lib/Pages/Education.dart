import 'package:akababi/main.dart';

import 'package:flutter/material.dart';

class Education extends StatefulWidget {
  @override
  _Education createState() => _Education();
}

class _Education extends State<Education> {
  var myInitialItem = 'DD';
  var myInitialItem1 = 'MM';
  var myInitialItem2 = 'YY';

  List<String> Days = ['DD', '1', '2', '3'];
  List<String> Month = ['MM', 'dec', 'jan', 'feb', 'mar', 'april', 'may'];
  List<String> Year = ['YY', '1991', '1992', '1993', '1994', '1995', '2000'];
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            // title: Text('AppBar'),
            centerTitle: true,
            leading: Row(
              children: [
                Container(
                    width: 50,
                    child: Image.asset(
                      'assets/images/1.jpg',
                      width: 50,
                    ))
              ],
            ),

            backgroundColor: Colors.white,
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(90),
                child: SizedBox(
                  height: 50,
                  child: TabBar(
                    tabs: [
                      Container(
                        margin: EdgeInsets.only(bottom: 1),
                        child: Tab(
                            child: Text(
                          'Sign up',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                          ),
                        )),
                      ),
                      Tab(
                          child: Text(
                        'Guest',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                        ),
                      )),
                      Tab(
                          child: Text(
                        'Log in',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                        ),
                      ))
                    ],
                  ),
                )),
          ),
          body: TabBarView(
            children: [
              buildPage('sign up'),
              buildPages('Guest'),
              buildPagess('Log in'),
            ],
          ),
        ),
      );

  Widget buildPage(String text) => Center(
          child: SingleChildScrollView(
            child: Container(
                  child: Column(
            children: [
              SizedBox(
                height: 75,
              ),
              SizedBox(
                  height: 100,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 10, bottom: 20, right: 200, top: 10),
                    child: Text(
                      'Education',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  )),
              Row(children: [
                Container(
                    margin: EdgeInsets.only(
                        left: 60.0, top: 20.0, right: 100.0, bottom: 20.0),
                    child: SizedBox(
                      width: 340,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'School/University',
                          hintText: 'add Education',
                        ),
                      ),
                    ))
              ]),
              Row(
                children: [
                  Center(
                      child: Container(
                    margin: EdgeInsets.only(
                        left: 60.0, top: 20.0, right: 40.0, bottom: 20.0),
                    child: DropdownButton(
                      onChanged: (value) {
                        myInitialItem = value as String;
                        setState(() {});
                      },
                      value: myInitialItem,
                      items: Days.map((items) {
                        return DropdownMenuItem(value: items, child: Text(items));
                      }).toList(),
                    ),
                  )),
                  Center(
                      child: Container(
                    margin: EdgeInsets.only(
                        left: 50.0, top: 20.0, right: 40.0, bottom: 20.0),
                    child: DropdownButton(
                      onChanged: (value) {
                        myInitialItem1 = value as String;
                        setState(() {});
                      },
                      value: myInitialItem1,
                      items: Month.map((items) {
                        return DropdownMenuItem(value: items, child: Text(items));
                      }).toList(),
                    ),
                  )),
                  Center(
                      child: Container(
                    margin: EdgeInsets.only(
                        left: 50.0, top: 20.0, right: 40.0, bottom: 20.0),
                    child: DropdownButton(
                      onChanged: (value) {
                        myInitialItem2 = value as String;
                        setState(() {});
                      },
                      value: myInitialItem2,
                      items: Year.map((items) {
                        return DropdownMenuItem(value: items, child: Text(items));
                      }).toList(),
                    ),
                  ))
                ],
              ),
              Row(
                children: [
                  Center(
                      child: Container(
                    margin: EdgeInsets.only(
                        left: 60.0, top: 20.0, right: 40.0, bottom: 20.0),
                    child: DropdownButton(
                      onChanged: (value) {
                        myInitialItem = value as String;
                        setState(() {});
                      },
                      value: myInitialItem,
                      items: Days.map((items) {
                        return DropdownMenuItem(value: items, child: Text(items));
                      }).toList(),
                    ),
                  )),
                  Center(
                      child: Container(
                    margin: EdgeInsets.only(
                        left: 50.0, top: 20.0, right: 40.0, bottom: 20.0),
                    child: DropdownButton(
                      onChanged: (value) {
                        myInitialItem1 = value as String;
                        setState(() {});
                      },
                      value: myInitialItem1,
                      items: Month.map((items) {
                        return DropdownMenuItem(value: items, child: Text(items));
                      }).toList(),
                    ),
                  )),
                  Center(
                      child: Container(
                    margin: EdgeInsets.only(
                        left: 50.0, top: 20.0, right: 40.0, bottom: 20.0),
                    child: DropdownButton(
                      onChanged: (value) {
                        myInitialItem2 = value as String;
                        setState(() {});
                      },
                      value: myInitialItem2,
                      items: Year.map((items) {
                        return DropdownMenuItem(value: items, child: Text(items));
                      }).toList(),
                    ),
                  ))
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 187),
                    child: IconButton(
                      icon: Icon(
                        Icons.add_circle,
                      ),
                      iconSize: 50,
                      color: Colors.blue,
                      splashColor: Colors.purple,
                      onPressed: () {
                        //print(add());
                      },
                    ),
                  )
                ],
              ),
            ],
                  ),
                ),
          ));
      buildPages(String text) => Center(
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
      ));
}
