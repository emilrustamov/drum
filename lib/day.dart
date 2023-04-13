import 'package:drum/global.dart';
import 'package:drum/level.dart';
import 'package:drum/listTrains.dart';
import 'package:drum/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Day extends StatefulWidget {
  int days;
  Day({Key? key, required this.days}) : super(key: key);

  @override
  State<Day> createState() => _DayState();
}

class _DayState extends State<Day> {
  int days = 0;

  @override
  void initState() {
    days = widget.days;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    bool selectedLevel = true;
    return Container(
        height: height,
        width: width,
        color: white,
        child: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.white,
              body: Stack(
                children: [
                  body(width, height),
                  appBar(width, height, context, days),
                  Expanded(
                      child: Align( alignment: Alignment.bottomCenter,
                        child: primaryButton(
                            context, ListTrains(), selectedLevel, "start"),
                      )),
                ],
              )),
          // body: Container(),
        ));
  }
}

Positioned buttons(double width, double height) {
  return Positioned(
    top: height * 0.85,
    left: width * 0.1,
    width: width * 0.8,
    height: height * 0.07,
    child: Container(
      decoration: BoxDecoration(
          color: darkPurple, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Start",
            textAlign: TextAlign.center,
            style: TextStyle(color: white, fontSize: 20),
          ),
        ],
      ),
    ),
  );
}

Container body(double width, double height) {
  return Container(
      width: width,
      height: height,
      color: Colors.white,
      padding: EdgeInsets.only(
          top: height * 0.18, right: width * 0.05, left: width * 0.05),
      child: Padding(
        padding: EdgeInsets.only(bottom: height * 0.15),
        child: ListView(physics: BouncingScrollPhysics(), children: [
          ...List.generate(
              9,
              (index) => Padding(
                    padding: EdgeInsets.symmetric(vertical: height * 0.01),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: height * 0.02, horizontal: width * 0.05),
                      width: width,
                      decoration: BoxDecoration(
                          color: lightWhite,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Row(
                        children: [
                          Text("${index + 1}",
                              style:
                                  TextStyle(color: darkPurple, fontSize: 20)),
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.07),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Warming arms", style: label_large(black)),
                                Text("7 min 30 sec", style: body_small(grey)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ))
        ]),
      ));
}

Widget appBar(double width, double height, BuildContext context, int days) {
  return Container(
    width: width,
    height: height * 0.18,
    alignment: Alignment.center,
    padding: EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
      color: superLightPurple,
    ),
    child: Stack(
      // alignment: AlignmentDirectional.centerStart,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child:
                              Icon(Icons.arrow_back, color: black, size: 20)),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.05),
                        child: Text(
                          "Day $days",
                          style: TextStyle(color: black, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    ...List.generate(
                      levelInfo.length,
                      (index) => Padding(
                        padding: EdgeInsets.only(right: width * 0.01),
                        child: Container(
                          decoration: BoxDecoration(
                            color: level == 0 && index <= 0 ||
                                    level == 1 && index <= 1 ||
                                    level == 2 && index <= 2
                                ? grey
                                : grey.withOpacity(0.5),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          width: width * 0.018,
                          height: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.02),
                      child: Text(
                        levelInfo[level]['name'],
                        style: TextStyle(color: black, fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "9 Exercises",
                        style: body_medium(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.05),
                        child: Text(
                          "30 min",
                          style: TextStyle(color: grey, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SvgPicture.asset("images/nots.svg"),
                    SvgPicture.asset(
                      "images/first_lev_b.svg",
                      color: darkPurple,
                      width: width * 0.2,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ],
    ),
  );
}
