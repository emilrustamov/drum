import 'package:drum/day.dart';
import 'package:drum/global.dart';
import 'package:drum/level.dart';
import 'package:drum/profile.dart';
import 'package:flutter/material.dart';

class ListTrains extends StatefulWidget {
  const ListTrains();

  @override
  State<ListTrains> createState() => _ListTrainsState();
}

class _ListTrainsState extends State<ListTrains> {
  bool isShow = false;

  List lessonList = [];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: black,
          unselectedItemColor: black200,
          currentIndex: page,
          onTap: (index) {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => tabs[index]));
            page = index;
          },
          items: [
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                    color: superLightPurple,
                    borderRadius: const BorderRadius.all(Radius.circular(12))),
                width: width * 0.15,
                child: Icon(
                  Icons.school,
                  color: darkPurple,
                ),
              ),
              label: "Exercises",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: 'Statitics',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                // onTap: () {
                //   Navigator.pushReplacement(context,
                //       MaterialPageRoute(builder: (context) => Profile()));
                // },
                child: Icon(
                  Icons.person,
                ),
              ),
              label: 'Me',
            )
          ]),
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Level()));
              });
            },
            child: Padding(
              padding: EdgeInsets.only(right: width * 0.06),
              child: Icon(
                Icons.swap_horiz,
                color: darkPurple,
              ),
            ),
          )
        ],
        title: Transform(
          // you can forcefully translate values left side using Transform
          transform: Matrix4.translationValues(-50.0, 0.0, 0.0),
          child: Text(
            "${levelInfo[level]['name']}: Exercises (0/30)",
            style: title_medium(),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          children: [
            ...List.generate(30, (index) {
              lessonList.add(false);
              return GestureDetector(
                onTap: () {
                  setState(() {
                    // isShow = !isShow;
                    for (var i = 0; i < lessonList.length; i++) {
                      lessonList[i] = false;
                    }
                    lessonList[index] = !lessonList[index];
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 12),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  width: width * 0.9,
                  height: 74,
                  decoration: BoxDecoration(
                      gradient:
                          lessonList[index] == true ? gradient : gradient2,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Day ${index + 1}',
                              style: lessonList[index] == true
                                  ? label_large(white)
                                  : label_large(black),
                            ),
                            Text(
                              '0/9 exercises',
                              style: lessonList[index] == true
                                  ? body_small(white)
                                  : body_small(grey),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Visibility(
                                visible: lessonList[index],
                                child: smallButton(
                                    context,
                                    Day(
                                      days: index + 1,
                                    )))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
