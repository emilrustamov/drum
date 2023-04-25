import 'package:drum/changeName.dart';
import 'package:drum/global.dart';
import 'package:drum/privacy.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile();

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
              link: Privacy()),
          ProfileWidget(
              text: "Privacy policy",
              icon: Icons.privacy_tip_outlined,
              link: Privacy()),
          ProfileWidget(
              text: "Delete all data",
              icon: Icons.delete_outline,
              link: Privacy()),
          ProfileWidget(
              text: "Feedback",
              icon: Icons.sms_failed_outlined,
              link: Privacy()),
          GestureDetector(
              onTap: () {
                print("Worked");
              },
              child: ProfileWidget(
                  text: "Share with friends about me",
                  icon: Icons.share_outlined,
                  link: null)),
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
