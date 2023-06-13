import 'package:drum/changeName.dart';
import 'package:drum/global.dart';
import 'package:drum/privacy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';

import 'reminders.dart';

class Profile extends StatefulWidget {
  const Profile();

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Future<void> feedback() async {
    await FlutterShare.share(
        title: 'Feedback',
        text: 'Feedback',
        linkUrl: 'https://www.google.com/',
        chooserTitle: 'Feedback');
  }

  Future<void> friends() async {
    await FlutterShare.share(
        title: 'Share with friends about me',
        text: 'Share with friends',
        linkUrl: 'https://www.google.com/',
        chooserTitle: 'Share with friends about me');
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
              icon: Icon(Icons.assignment),
              label: 'Statitics',
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                    color: superLightPurple,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                width: w * 0.17,
                height: h * 0.05,
                child: Icon(
                  Icons.person,
                  color: darkPurple,
                ),
              ),
              label: "Me",
            ),
          ]),
      appBar: AppBar(
        title: Text(
          username.text,
          style: TextStyle(color: black),
        ),
        backgroundColor: lightWhite,
        elevation: 0,
        leadingWidth: 0,
      ),
      body: Column(
        children: [
          ProfileWidget(
              text: "Change name",
              icon: Icons.edit_outlined,
              link: ChangeName()),
          ProfileWidget(
              text: "Reminders",
              icon: Icons.notifications_none,
              link: Reminders()),
          ProfileWidget(
              text: "Privacy policy",
              icon: Icons.privacy_tip_outlined,
              link: Privacy()),
          Padding(
            padding: EdgeInsets.symmetric(vertical: h * 0.002, horizontal: 20),
            child: GestureDetector(
              onTap: () {
                deleteDialog(context, h, w);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: h * 0.02),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: grey))),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Icon(
                        Icons.delete_outline,
                        color: grey,
                        size: 18,
                      ),
                    ),
                    Text(
                      "Delete all data",
                      style: body_medium(),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: h * 0.002, horizontal: 20),
            child: GestureDetector(
              onTap: () {
                feedback();
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: h * 0.02),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: grey))),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Icon(
                        Icons.sms_failed_outlined,
                        color: grey,
                        size: 18,
                      ),
                    ),
                    Text(
                      "Feedback",
                      style: body_medium(),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: h * 0.002, horizontal: 20),
            child: GestureDetector(
              onTap: () {
                friends();
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: h * 0.02),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: grey))),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Icon(
                        Icons.share_outlined,
                        color: grey,
                        size: 18,
                      ),
                    ),
                    Text(
                      "Share with friends about me",
                      style: body_medium(),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  ProfileWidget({
    required this.text,
    required this.icon,
    this.link,
  });
  final String text;
  final IconData icon;
  final Widget? link;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: h * 0.002, horizontal: 20),
      child: GestureDetector(
        onTap: () {
          if (link != null) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => link!));
          }
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: h * 0.02),
          decoration:
              BoxDecoration(border: Border(bottom: BorderSide(color: grey))),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Icon(
                  icon,
                  color: grey,
                  size: 18,
                ),
              ),
              Text(
                text,
                style: body_medium(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Future<dynamic> deleteDialog(
    BuildContext context, double height, double width) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          contentPadding: EdgeInsets.all(0),
          content: Container(
              height: height * 0.15,
              width: width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: white),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: height * 0.029, horizontal: width * 0.09),
                        child: Text(
                          "Are you sure to reset app and delete all data?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: height * 0.005),
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                    color: black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.1),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: height * 0.005),
                                child: Text(
                                  "Yes",
                                  style: TextStyle(
                                      color: black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              )),
        );
      });
}
