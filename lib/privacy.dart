import 'package:drum/auth.dart';
import 'package:drum/day.dart';
import 'package:drum/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:  myAppbar("Privacy policy", Icons.arrow_back), body: Column());
  }
}
