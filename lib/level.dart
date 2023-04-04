import 'package:drum/global.dart';
import 'package:drum/listTrains.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:drum/day.dart';

class Level extends StatefulWidget {
  const Level();

  @override
  State<Level> createState() => _LevelState();
}

class _LevelState extends State<Level> {
  @override
  // bool isSelected = false;
  List isSelecte = [
    {"selected": false},
    {"selected": false},
    {"selected": false},
  ];
  List levelInfo = [
    {
      "name": "Beginner",
      "subname": "I'm just starting to learn",
      "disImage": "images/first_lev_b.svg",
      "activImage": "images/first_lev_w.svg"
    },
    {
      "name": "Intermediate",
      "subname": "I train every week to improve my skills",
      "disImage": "images/second_lev_b.svg",
      "activImage": "images/first_lev_w.svg"
    },
    {
      "name": "Advanced",
      "subname": "I play drums well and practice every day",
      "disImage": "images/third_lev_b.svg",
      "activImage": "images/first_lev_w.svg"
    },
  ];
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: appBar(context),
        body: SafeArea(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    3,
                    (index) => lev(
                        width,
                        height,
                        index,
                        levelInfo[index]["name"],
                        levelInfo[index]["subname"],
                        levelInfo[index]["disImage"],
                        levelInfo[index]["activImage"])),
                primaryButton(context, ListTrains())
              ],
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector lev(double width, double height, int levIndex, String name,
      String subname, String disImage, String activImage) {
    return GestureDetector(
      onTap: () {
        for (var i = 0; i < isSelecte.length; i++) {
          isSelecte[i]["selected"] = false;
        }
        setState(() {
          isSelecte[levIndex]["selected"] = true;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: height * 0.02),
        child: Container(
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * 0.08),
                child: isSelecte[levIndex]["selected"] == true
                    ? SvgPicture.asset(activImage)
                    : SvgPicture.asset(disImage),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.1, right: width * 0.01),
                        child: Container(
                          decoration: BoxDecoration(
                            color: isSelecte[levIndex]["selected"] == true
                                ? Colors.white
                                : black,
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          width: width * 0.018,
                          height: 16,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.01),
                        child: Container(
                          decoration: BoxDecoration(
                            color: isSelecte[levIndex]["selected"] == true
                                ? Colors.white.withOpacity(0.5)
                                : black.withOpacity(0.5),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          width: width * 0.018,
                          height: 16,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.02),
                        child: Container(
                          decoration: BoxDecoration(
                            color: isSelecte[levIndex]["selected"] == true
                                ? Colors.white.withOpacity(0.5)
                                : black.withOpacity(0.5),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          width: width * 0.018,
                          height: 16,
                        ),
                      ),
                      Text(
                        name,
                        style: TextStyle(
                            color: isSelecte[levIndex]["selected"] == true
                                ? Colors.white
                                : black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: width * 0.10, top: width * 0.02),
                    child: Text(
                      subname,
                      style: TextStyle(
                          color: isSelecte[levIndex]["selected"] == true
                              ? Colors.white
                              : grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: isSelecte[levIndex]["selected"] == true
                    ? Colors.black.withOpacity(0.2)
                    : Colors.transparent,
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 1),
              ),
            ],
            gradient:
                isSelecte[levIndex]["selected"] == true ? gradient : gradient2,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          width: width * 0.91,
          height: height * 0.17,
        ),
      ),
    );
  }
}
