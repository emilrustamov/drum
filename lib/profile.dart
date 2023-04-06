import 'package:drum/auth.dart';
import 'package:drum/global.dart';
import 'package:drum/auth.dart';
import 'package:drum/level.dart';
import 'package:drum/listTrains.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vladimir"),
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
  const ProfileWidget({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
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
