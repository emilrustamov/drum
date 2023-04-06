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
  bool selectedLevel = false;

  List isSelecte = [
    {"selected": false},
    {"selected": false},
    {"selected": false},
  ];

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: MyAppbar(w: width),
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
                primaryButton(context, ListTrains(), selectedLevel)
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
          selectedLevel = true;
          level = levIndex;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: height * 0.02),
        child: Container(
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
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          width: width * 0.91,
          height: height * 0.17,
          child: Row(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.08, right: width * 0.1),
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
                      ...List.generate(
                        levelInfo.length,
                        (index) => Padding(
                          padding: EdgeInsets.only(right: width * 0.01),
                          child: Container(
                            decoration: BoxDecoration(
                              color: levIndex == 0 && index <= 0 ||
                                      levIndex == 1 && index <= 1 ||
                                      levIndex == 2 && index <= 2
                                  ? isSelecte[levIndex]["selected"] == true
                                      ? Colors.white
                                      : black
                                  : isSelecte[levIndex]["selected"] == true
                                      ? Colors.white.withOpacity(0.5)
                                      : black.withOpacity(0.5),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            width: width * 0.018,
                            height: 16,
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(right: width * 0.01),
                      //   child: Container(
                      //     decoration: BoxDecoration(
                      //       color: isSelecte[levIndex]["selected"] == true
                      //           ? Colors.white.withOpacity(0.5)
                      //           : black.withOpacity(0.5),
                      //       borderRadius: BorderRadius.all(
                      //         Radius.circular(12),
                      //       ),
                      //     ),
                      //     width: width * 0.018,
                      //     height: 16,
                      //   ),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.only(right: width * 0.02),
                      //   child: Container(
                      //     decoration: BoxDecoration(
                      //       color: isSelecte[levIndex]["selected"] == true
                      //           ? Colors.white.withOpacity(0.5)
                      //           : black.withOpacity(0.5),
                      //       borderRadius: BorderRadius.all(
                      //         Radius.circular(12),
                      //       ),
                      //     ),
                      //     width: width * 0.018,
                      //     height: 16,
                      //   ),
                      // ),
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
                    padding: EdgeInsets.only(top: width * 0.02),
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
        ),
      ),
    );
  }
}
