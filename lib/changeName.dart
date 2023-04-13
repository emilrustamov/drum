import 'package:drum/global.dart';
import 'package:drum/level.dart';
import 'package:drum/profile.dart';
import 'package:drum/widgets/appbar.dart';
import 'package:drum/widgets/button.dart';
import 'package:flutter/material.dart';

class ChangeName extends StatefulWidget {
  const ChangeName();

  @override
  State<ChangeName> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ChangeName> {
  bool btnStatus = false;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: myAppbar("Change your name", Icons.arrow_back),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // Container(alignment: Alignment.topLeft,
              //   padding: EdgeInsets.only(
              //       top: h*0.07, bottom: h*0.04, left: 26),
              //   child: Text(
              //     "Your name",
              //     style: title_medium(black),
              //   ),
              // ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: w * 0.95,
                child: TextField(
                  maxLength: 12,
                  cursorColor: black,
                  controller: username,
                  onChanged: (value) {
                    setState(() {
                      value = username.text.trim();
                      if (username.text.length >= 3) {
                        btnStatus = true;
                      } else {
                        btnStatus = false;
                      }
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'Input',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: lightPurple),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: black),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: red),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: w * 0.08),
                child: Text(
                  "Enter your name, which will be shown in the profile and in the statistics.",
                  textAlign: TextAlign.left,
                  style: body_small(black),
                ),
              ),
            ],
          ),
          primaryButton(context, Profile(), btnStatus, "Save"),
        ],
      ),
    );
  }
}
