import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(

      margin: EdgeInsets.only(left: 40, right: 40, bottom: 5, top: 120),
      // decoration: BoxDecoration(
      //     color: Colors.white, border: Border.all(color: Colors.black)),
      child: Column(
        children: [
          Container(
              width: size.width * 0.6,
              margin: EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: ' Email',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 206, 202, 202))),
              )),
          Container(
              width: size.width * 0.6,
              margin: EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: ' Password',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 206, 202, 202))),
              ))
          /*Container(
            width: size.width * 0.5,
            margin: EdgeInsets.only(bottom: 15),
            child: ElevatedButton(
              onPressed: () {},
            ),
          ),*/
        ],
      ),
    );
  }
}
