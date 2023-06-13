import 'package:drum/global.dart';
import 'package:drum/level.dart';
import 'package:drum/widgets/button.dart';
import 'package:flutter/material.dart';

class Auth extends StatefulWidget {
  const Auth();

  @override
  State<Auth> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Auth> {
  bool btnStatus = false;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Transform(
          transform: Matrix4.translationValues(10.0, 0.0, 0.0),
          child: Text(
            "Your name",
            style: title_medium(black),
          ),
        ),
      ),
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
          primaryButton(context, Level(), btnStatus, "Continue"),
        ],
      ),
    );
  }
}
