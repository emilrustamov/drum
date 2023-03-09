import 'package:drum/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Level extends StatefulWidget {
  const Level({super.key});

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
      "subname": "Lorem Ipsum",
      "disImage": "images/first_lev_b.svg",
      "activImage": "images/first_lev_w.svg"
    },
    {
      "name": "Middle",
      "subname": "Lorem Ipsum",
      "disImage": "images/first_lev_b.svg",
      "activImage": "images/first_lev_w.svg"
    },
    {
      "name": "Pro",
      "subname": "Lorem Ipsum",
      "disImage": "images/first_lev_b.svg",
      "activImage": "images/first_lev_w.svg"
    },
  ];
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: Text(
            "Choose your level",
            style: h1(),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: blackDrum,
            ),
          ),
        ),
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
                // SizedBox(
                //   height: 20,
                // ),
                // GestureDetector(
                //   onTap: () {
                //     setState(() {
                //       isSelected = true;
                //     });
                //   },
                //   child: Container(
                //     child: Row(
                //       children: [
                //         Padding(
                //           padding: EdgeInsets.only(left: 26.0),
                //           child: isSelected == true
                //               ? Image.asset("images/firstLevelWhite.png")
                //               : Image.asset("images/firstLevelBlack.png"),
                //         ),
                //         Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //             Row(
                //               children: [
                //                 Padding(
                //                   padding: const EdgeInsets.only(right: 4),
                //                   child: Container(
                //                     decoration: BoxDecoration(
                //                       color: isSelected == true
                //                           ? Colors.white
                //                           : blackDrum,
                //                       borderRadius: BorderRadius.all(
                //                         Radius.circular(12),
                //                       ),
                //                     ),
                //                     width: 6,
                //                     height: 16,
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: const EdgeInsets.only(right: 4),
                //                   child: Container(
                //                     decoration: BoxDecoration(
                //                       color: isSelected == true
                //                           ? Colors.white.withOpacity(0.5)
                //                           : blackDrum.withOpacity(0.5),
                //                       borderRadius: BorderRadius.all(
                //                         Radius.circular(12),
                //                       ),
                //                     ),
                //                     width: 6,
                //                     height: 16,
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: const EdgeInsets.only(right: 8),
                //                   child: Container(
                //                     decoration: BoxDecoration(
                //                       color: isSelected == true
                //                           ? Colors.white.withOpacity(0.5)
                //                           : blackDrum.withOpacity(0.5),
                //                       borderRadius: BorderRadius.all(
                //                         Radius.circular(12),
                //                       ),
                //                     ),
                //                     width: 6,
                //                     height: 16,
                //                   ),
                //                 ),
                //                 Text(
                //                   "Begginer",
                //                   style: TextStyle(
                //                       color: isSelected == true
                //                           ? Colors.white
                //                           : blackDrum,
                //                       fontSize: 16,
                //                       fontWeight: FontWeight.w500),
                //                 )
                //               ],
                //             ),
                //             Padding(
                //               padding:
                //                   const EdgeInsets.only(left: 26.0, top: 8),
                //               child: Text(
                //                 "I'm just starting to learn",
                //                 style: TextStyle(
                //                     color: isSelected == true
                //                         ? Colors.white
                //                         : mediumBlackDrum,
                //                     fontSize: 12,
                //                     fontWeight: FontWeight.w400),
                //               ),
                //             )
                //           ],
                //         ),
                //       ],
                //     ),
                //     decoration: BoxDecoration(
                //       boxShadow: [
                //         BoxShadow(
                //           color: isSelected == true
                //               ? Colors.black.withOpacity(0.2)
                //               : Colors.transparent,
                //           spreadRadius: 1,
                //           blurRadius: 1,
                //           offset: Offset(0, 1), // changes position of shadow
                //         ),
                //       ],
                //       gradient: isSelected == true ? gradient : gradient2,
                //       borderRadius: BorderRadius.all(
                //         Radius.circular(12),
                //       ),
                //     ),
                //     width: 328,
                //     height: 140,
                //   ),
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                // GestureDetector(
                //   onTap: () {
                //     setState(() {
                //       isSelected = true;
                //     });
                //   },
                //   child: Container(
                //     child: Row(
                //       children: [
                //         Padding(
                //           padding: EdgeInsets.only(left: 26.0),
                //           child: isSelected == true
                //               ? Image.asset("images/firstLevelWhite.png")
                //               : Image.asset("images/firstLevelBlack.png"),
                //         ),
                //         Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //             Row(
                //               children: [
                //                 Padding(
                //                   padding: const EdgeInsets.only(right: 4),
                //                   child: Container(
                //                     decoration: BoxDecoration(
                //                       color: isSelected == true
                //                           ? Colors.white
                //                           : blackDrum,
                //                       borderRadius: BorderRadius.all(
                //                         Radius.circular(12),
                //                       ),
                //                     ),
                //                     width: 6,
                //                     height: 16,
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: const EdgeInsets.only(right: 4),
                //                   child: Container(
                //                     decoration: BoxDecoration(
                //                       color: isSelected == true
                //                           ? Colors.white.withOpacity(0.5)
                //                           : blackDrum.withOpacity(0.5),
                //                       borderRadius: BorderRadius.all(
                //                         Radius.circular(12),
                //                       ),
                //                     ),
                //                     width: 6,
                //                     height: 16,
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: const EdgeInsets.only(right: 8),
                //                   child: Container(
                //                     decoration: BoxDecoration(
                //                       color: isSelected == true
                //                           ? Colors.white.withOpacity(0.5)
                //                           : blackDrum.withOpacity(0.5),
                //                       borderRadius: BorderRadius.all(
                //                         Radius.circular(12),
                //                       ),
                //                     ),
                //                     width: 6,
                //                     height: 16,
                //                   ),
                //                 ),
                //                 Text(
                //                   "Begginer",
                //                   style: TextStyle(
                //                       color: isSelected == true
                //                           ? Colors.white
                //                           : blackDrum,
                //                       fontSize: 16,
                //                       fontWeight: FontWeight.w500),
                //                 )
                //               ],
                //             ),
                //             Padding(
                //               padding:
                //                   const EdgeInsets.only(left: 26.0, top: 8),
                //               child: Text(
                //                 "I'm just starting to learn",
                //                 style: TextStyle(
                //                     color: isSelected == true
                //                         ? Colors.white
                //                         : mediumBlackDrum,
                //                     fontSize: 12,
                //                     fontWeight: FontWeight.w400),
                //               ),
                //             )
                //           ],
                //         ),
                //       ],
                //     ),
                //     decoration: BoxDecoration(
                //       boxShadow: [
                //         BoxShadow(
                //           color: isSelected == true
                //               ? Colors.black.withOpacity(0.2)
                //               : Colors.transparent,
                //           spreadRadius: 1,
                //           blurRadius: 1,
                //           offset: Offset(0, 1), // changes position of shadow
                //         ),
                //       ],
                //       gradient: isSelected == true ? gradient : gradient2,
                //       borderRadius: BorderRadius.all(
                //         Radius.circular(12),
                //       ),
                //     ),
                //     width: 328,
                //     height: 140,
                //   ),
                // ),
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
                padding: EdgeInsets.only(left: width * 0.03),
                child: isSelecte[levIndex]["selected"] == true
                    ? SvgPicture.asset(activImage)
                    : SvgPicture.asset(disImage),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.004),
                        child: Container(
                          decoration: BoxDecoration(
                            color: isSelecte[levIndex]["selected"] == true
                                ? Colors.white
                                : blackDrum,
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          width: 6,
                          height: 16,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.004),
                        child: Container(
                          decoration: BoxDecoration(
                            color: isSelecte[levIndex]["selected"] == true
                                ? Colors.white.withOpacity(0.5)
                                : blackDrum.withOpacity(0.5),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          width: 6,
                          height: 16,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.008),
                        child: Container(
                          decoration: BoxDecoration(
                            color: isSelecte[levIndex]["selected"] == true
                                ? Colors.white.withOpacity(0.5)
                                : blackDrum.withOpacity(0.5),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          width: 6,
                          height: 16,
                        ),
                      ),
                      Text(
                        name,
                        style: TextStyle(
                            color: isSelecte[levIndex]["selected"] == true
                                ? Colors.white
                                : blackDrum,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: width * 0.26, top: width * 0.008),
                    child: Text(
                      subname,
                      style: TextStyle(
                          color: isSelecte[levIndex]["selected"] == true
                              ? Colors.white
                              : mediumBlackDrum,
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
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
            gradient:
                isSelecte[levIndex]["selected"] == true ? gradient : gradient2,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          width: 328,
          height: 140,
        ),
      ),
    );
  }
}
