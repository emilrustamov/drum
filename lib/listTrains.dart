import 'package:drum/day.dart';
import 'package:drum/global.dart';
import 'package:drum/level.dart';
import 'package:flutter/material.dart';

class ListTrains extends StatefulWidget {
  const ListTrains({super.key});

  @override
  State<ListTrains> createState() => _ListTrainsState();
}

class _ListTrainsState extends State<ListTrains> {
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.school,
            color: darkPurple,
          ),
          label: 'Exercises',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment),
          label: 'Statitics',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
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
            "Beginner: Exercises (0/30)",
            style: title_medium(),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          children: [
            ...List.generate(30, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    isShow = !isShow;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 12),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  width: width * 0.9,
                  height: 74,
                  decoration: BoxDecoration(
                      gradient: isShow == true ? gradient : gradient2,
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
                              style: label_large(black),
                            ),
                            Text(
                              '0/9 exercises',
                              style: body_small(),
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
                                visible: isShow,
                                child: smallButton(context, Day()))
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
