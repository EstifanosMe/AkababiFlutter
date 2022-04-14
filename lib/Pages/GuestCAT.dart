import 'package:flutter/material.dart';

import 'package:akababi/Pages/CAT.dart';


class Guest extends StatefulWidget{
  @override
  State<Guest> createState() => GuestState();
}

class GuestState extends State<Guest>{
  @override
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
                    'Social',
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

}