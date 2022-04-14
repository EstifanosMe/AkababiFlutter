import 'package:flutter/material.dart';
import 'radio_button.dart';
import 'googl_map.dart';
import 'package:akababi/main.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    //this size provides us total height and width of our screen
    return Scaffold(
        // appBar: AppBar(
        //   // backgroundColor: Colors.white,
        //   // leading: Image.asset(
        //   //   "assets/images/logocropped.jpg",
        //   //   // width: size.width * 0.3
        //   // ),
        // ),
        body:
            //SingleChildScrollView(
            //     child: Container(
            //         margin: EdgeInsets.all(2),
            //         // height: size.height * .98,
            //         width: size.width * .98,
            //         // decoration: BoxDecoration(border: Border.all(color: Colors.red)),

            //         child: Column(
            //           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             // Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            //             //   Container(
            //             //     margin: EdgeInsets.only(left: 12, top: 10),
            //             //     // decoration:
            //             //     //     BoxDecoration(border: Border.all(color: Colors.blue)),
            //             //     child: Image.asset(
            //             //       "assets/images/logocropped.jpg",
            //             //       width: size.width * 0.3,
            //             //     ),
            //             //   )
            //             // ]),
            //             Container(
            //               margin: EdgeInsets.only(top: 5),
            //               // width: size.width * 0.92,
            //               padding: EdgeInsets.only(bottom: 5),
            //               decoration: BoxDecoration(
            //                   border: Border(bottom: BorderSide(color: Colors.grey))),
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
            //                 children: [
            //                   Container(
            //                       child: Text(
            //                     "Sign up",
            //                     style: TextStyle(
            //                         fontSize: 20,
            //                         fontWeight: FontWeight.bold,
            //                         color: Colors.lightBlue),
            //                   )),
            //                   Container(
            //                       child: Text(
            //                     "Guest ",
            //                     style: TextStyle(
            //                         fontSize: 20,
            //                         fontWeight: FontWeight.bold,
            //                         color: Colors.lightBlue),
            //                   )),
            //                   Container(
            //                       child: Text(
            //                     "Login",
            //                     style: TextStyle(
            //                         fontSize: 20,
            //                         fontWeight: FontWeight.bold,
            //                         color: Colors.lightBlue),
            //                   )),
            //                 ],
            //               ),
            //             ),
            // Container(
            //     decoration:
            //         BoxDecoration(border: Border.all(color: Colors.brown)),
            //     height: size.height * 0.7,
            //     width: double.infinity,
            //  child:
            SingleChildScrollView(
                child: Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            // decoration:
            //     BoxDecoration(border: Border.all(color: Colors.yellow)),
            child: Stack(children: [
              Icon(
                Icons.account_circle_outlined,
                color: Colors.lightBlue,
                size: 100,
              ),
              Positioned(
                  bottom: -3,
                  right: -4,
                  child: IconButton(
                    icon: Icon(
                    Icons.add_circle ),
                    color: Colors.green,
                    splashColor: Colors.purple,
                    iconSize: 40,
                    onPressed: () {},
                  ))
            ]),
          )
        ]),
        Container(
            width: size.width * 0.5,
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 5, top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: 15),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: ' Email',
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 206, 202, 202))),
                    )),
                Container(
                    margin: EdgeInsets.only(bottom: 15),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: ' First Name',
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 206, 202, 202))),
                    )),
                Container(
                    margin: EdgeInsets.only(bottom: 15),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: ' Last Name',
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 206, 202, 202))),
                    )),

                //  Text("textxdcfjvgkbjh"))
                RadioButtonSex(),
                //trial placeholder for birthday
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  // decoration:
                  //     BoxDecoration(border: Border.all(color: Colors.red)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        new Flexible(
                          child: Container(
                              margin: EdgeInsets.only(right: 30),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey)),
                              child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: '   DD ',
                                      hintStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 206, 202, 202))))),
                        ),
                        new Flexible(
                          child: Container(
                              margin: EdgeInsets.only(right: 20, left: 15),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey)),
                              child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: '  MM ',
                                      hintStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 206, 202, 202))))),
                        ),
                        new Flexible(
                          child: Container(
                              margin: EdgeInsets.only(left: 25),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey)),
                              child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: '  YYYY ',
                                      hintStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 206, 202, 202))))),
                        )
                      ]),
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 15),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: ' Password',
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 206, 202, 202))),
                    )),
                Container(
                    margin: EdgeInsets.only(bottom: 15),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 206, 202, 202))),
                    )),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                      margin: EdgeInsets.only(left: 16, bottom: 15),
                      // decoration: BoxDecoration(
                      //     border: Border.all(color: Colors.indigo)),
                      child: Text(
                        "Location",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ))
                ]),
                Container(
                    margin: EdgeInsets.only(bottom: 15),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: TextFormField()),
                //GoogleMapComponent()
              ],
            ))
      ],
    ))
        // )
        );
    // ],
    // )
    // )),
    //  );
  }
}
