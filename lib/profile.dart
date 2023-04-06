import 'package:drum/auth.dart';
import 'package:drum/global.dart';
import 'package:drum/auth.dart';
import 'package:drum/level.dart';
import 'package:drum/listTrains.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile();

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                    borderRadius: const BorderRadius.all(Radius.circular(12))),
                width: width * 0.15,
                child: Icon(
                  Icons.person,
                  color: darkPurple,
                ),
              ),
              label: 'Me',
            )
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
          ProfileWidget(text: "Change name", icon: Icons.edit_outlined),
          ProfileWidget(text: "Reminders", icon: Icons.notifications_none),
          ProfileWidget(
              text: "Privacy Policy", icon: Icons.privacy_tip_outlined),
          ProfileWidget(text: "Delete all data", icon: Icons.delete_outline),
          ProfileWidget(text: "Feedback", icon: Icons.sms_failed_outlined),
          ProfileWidget(text: "Share with Friends", icon: Icons.share_outlined),
        ],
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  ProfileWidget({
    required this.text,
    required this.icon,
  });
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 0.002, horizontal: 20),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration:
            BoxDecoration(border: Border(bottom: BorderSide(color: grey))),
        child: Row(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Icon(
                  icon,
                  color: grey,
                  size: 18,
                ),
              ),
            ),
            Text(
              text,
              style: body_medium(),
            )
          ],
        ),
      ),
    );
  }
}
