import 'package:drum/global.dart';
import 'package:drum/level.dart';
import 'package:flutter/material.dart';

class Auth extends StatefulWidget {
  const Auth();

  @override
  State<Auth> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 52.0, bottom: 28, left: 16, right: 16),
                    child: Text(
                      "Your name",
                      textAlign: TextAlign.left,
                      style: title_medium(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Input',
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
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, left: 32),
                    child: Text(
                      "Enter your name, which will be shown in the profile and in the statistics.",
                      textAlign: TextAlign.left,
                      style: body_small(),
                    ),
                  ),
                ],
              ),
              primaryButton(context, Level()),
            ],
          ),
        ),
      ),
    );
  }
}
