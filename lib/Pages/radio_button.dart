import 'package:flutter/material.dart';

class RadioButtonSex extends StatefulWidget {
  @override
  _RadioButtonSexState createState() => _RadioButtonSexState();
}

enum Sex { Male, Female }

class _RadioButtonSexState extends State<RadioButtonSex> {
  Sex? _sex = Sex.Male;
  @override
  Widget build(BuildContext context) {
    return Container(
        // decoration: BoxDecoration(
        //     border:
        //         Border.all(color: Colors.deepOrangeAccent)),
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(children: [
          Radio(
              value: Sex.Male,
              groupValue: _sex,
              onChanged: (Sex? value) {
                setState(() {
                  _sex = value;
                });
              }),
          Text(
            "Male",
            style: TextStyle(fontSize: 20),
          )
        ]),
        Row(children: [
          Radio(
              value: Sex.Female,
              groupValue: _sex,
              onChanged: (Sex? value) {
                setState(() {
                  _sex = value;
                });
              }),
          Text(
            "Female",
            style: TextStyle(fontSize: 20),
          )
        ])
      ],
    ));
  }
}
