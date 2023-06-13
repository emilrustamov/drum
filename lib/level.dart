import 'package:drum/global.dart';
import 'package:drum/listTrains.dart';
import 'package:drum/widgets/appbar.dart';
import 'package:drum/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: myAppbar( context, "Choose your level", Icons.arrow_back),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          ...List.generate(
              3,
              (index) => lev(
                  w,
                  h,
                  index,
                  levelInfo[index]["name"],
                  levelInfo[index]["subname"],
                  levelInfo[index]["disImage"],
                  levelInfo[index]["activImage"])),
          Expanded
          (child: Align(alignment: Alignment.bottomCenter, child: primaryButton(context, ListTrains(), selectedLevel, "Continue")))
        ],
      ),
    );
  }

  GestureDetector lev(double w, double h, int levIndex, String name,
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
        padding: EdgeInsets.only(bottom: h * 0.02),
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
          width: w * 0.91,
          height: h * 0.17,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: w * 0.08, right: w * 0.1),
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
                          padding: EdgeInsets.only(right: w * 0.01),
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
                            width: w * 0.018,
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
                    padding: EdgeInsets.only(top: w * 0.02),
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
