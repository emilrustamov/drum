import 'package:drum/auth.dart';
import 'package:drum/global.dart';
import 'package:drum/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';

class Statystics extends StatefulWidget {
  const Statystics({Key? key}) : super(key: key);

  @override
  State<Statystics> createState() => _StatysticsState();
}

class _StatysticsState extends State<Statystics> {
  Future<void> statis() async {
    await FlutterShare.share(
        title: 'Share statistics',
        text: 'Share statistics',
        linkUrl: 'https://www.google.com/',
        chooserTitle: 'Share my statistics');
  }

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
              icon: GestureDetector(
                // onTap: () {
                //   Navigator.pushReplacement(context,
                //       MaterialPageRoute(builder: (context) => ListTrains()));
                // },
                child: Icon(
                  Icons.school,
                ),
              ),
              label: "Exercises",
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                    color: superLightPurple,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                width: w * 0.17,
                height: h * 0.05,
                child: Icon(
                  Icons.assignment,
                  color: darkPurple,
                ),
              ),
              label: "Statistics",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Me",
            ),
          ]),
      appBar: AppBar(
        actions: [
          // Icon(
          //   Icons.share,
          //   color: darkPurple,
          // )
          GestureDetector(
              onTap: () {
                statis();
              },
              child: Image.asset("images/share.png"))
        ],
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Transform(
          transform: Matrix4.translationValues(-60.0, 0.0, 0.0),
          child: Text(
            "Statistics",
            style: title_medium(black),
          ),
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: w * 0.04, vertical: h * 0.028),
                child: Text(
                  "Total",
                  style: title_small(black),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: w * 0.1, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Days of training",
                      style: body_medium(),
                    ),
                    Text(
                      "4",
                      style: body_lagre(darkPurple),
                    )
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: w * 0.1, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Exercises",
                      style: body_medium(),
                    ),
                    Text(
                      "24",
                      style: body_lagre(darkPurple),
                    )
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: w * 0.1, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Time",
                      style: body_medium(),
                    ),
                    Text(
                      "1h 35min",
                      style: body_lagre(darkPurple),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: w * 0.04, vertical: h * 0.028),
                child: Text(
                  "Last 7 days",
                  style: title_small(black),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: w * 0.1, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "February 21, 2022",
                          style: body_medium(),
                        ),
                        Text(
                          "0 exercises done",
                          style: body_small(grey),
                        ),
                      ],
                    ),
                    Text(
                      "Sat",
                      style: body_lagre(lightPurple),
                    )
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: w * 0.1, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "February 21, 2022",
                          style: body_medium(),
                        ),
                        Text(
                          "0 exercises done",
                          style: body_small(grey),
                        ),
                      ],
                    ),
                    Text(
                      "Sat",
                      style: body_lagre(lightPurple),
                    )
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: w * 0.1, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "February 21, 2022",
                          style: body_medium(),
                        ),
                        Text(
                          "0 exercises done",
                          style: body_small(grey),
                        ),
                      ],
                    ),
                    Text(
                      "Sat",
                      style: body_lagre(lightPurple),
                    )
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: w * 0.1, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "February 21, 2022",
                          style: body_medium(),
                        ),
                        Text(
                          "0 exercises done",
                          style: body_small(grey),
                        ),
                      ],
                    ),
                    Text(
                      "Sat",
                      style: body_lagre(lightPurple),
                    )
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: w * 0.1, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "February 21, 2022",
                          style: body_medium(),
                        ),
                        Text(
                          "0 exercises done",
                          style: body_small(grey),
                        ),
                      ],
                    ),
                    Text(
                      "Sat",
                      style: body_lagre(lightPurple),
                    )
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: w * 0.1, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "February 21, 2022",
                          style: body_medium(),
                        ),
                        Text(
                          "0 exercises done",
                          style: body_small(grey),
                        ),
                      ],
                    ),
                    Text(
                      "Sat",
                      style: body_lagre(lightPurple),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
