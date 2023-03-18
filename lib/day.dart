import 'package:drum/global.dart';
import 'package:drum/level.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'auth.dart';

class Day extends StatefulWidget {
  const Day();

  @override
  State<Day> createState() => _DayState();
}

class _DayState extends State<Day> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: appBar(context),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              color: lightPurple,
              child: Row(
                children: [
                  Column(
                    children: [
                      // Row(
                      //   children: [
                      //     Icon(
                      //       Icons.arrow_back,
                      //     ),
                      //     Text(
                      //       "Day 1",
                      //       style: title_medium(),
                      //     ),
                      //   ],
                      // ),
                      Row(
                        children: [
                          vitaminka(red, null),
                          vitaminka(red, null),
                          vitaminka(red, null),
                        ],
                      ),
                      Text(
                        "9 Exercises 30 min",
                        style: body_medium(),
                      )
                    ],
                  ),
                  Column(
                    children: [SvgPicture.asset("images/day_b.svg")],
                  )
                ],
              ),
            ),
            Container(
              height: height * 0.79,
              child: ListView(
                children: [
                  ...List.generate(19, (index) {
                    return Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      child: Row(
                        children: [
                          Text(
                            '${index + 1}',
                            style: TextStyle(
                                color: lightPurple,
                                fontSize: 24,
                                fontWeight: FontWeight.w400),
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  'Warming arms',
                                  style: label_large(black),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  '5 mins',
                                  style: body_small(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
                  primaryButton(context, Auth())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
