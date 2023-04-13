import 'package:drum/day.dart';
import 'package:drum/global.dart';
import 'package:drum/level.dart';
import 'package:drum/widgets/smallButton.dart';
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
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
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
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                width: w * 0.17,
                height: h*0.05,
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
                child: const Icon(
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
                    context, MaterialPageRoute(builder: (context) => const Level()));
              });
            },
            child: Padding(
              padding: EdgeInsets.only(right: w * 0.06),
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
            style: title_medium(black),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: w*0.04, vertical: h*0.017),
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
                  margin: EdgeInsets.only(bottom: h*0.017),
                  padding: EdgeInsets.symmetric(horizontal: w*0.04),
                  width: w* 0.9,
                  height: h*0.1,
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
                                  ? title_medium(Colors.white)
                                  : title_medium(black),
                            ),
                            Text(
                              '0/9 exercises',
                              style: lessonList[index] == true
                                  ? body_small(Colors.white)
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
