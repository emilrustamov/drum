import 'package:drum/global.dart';
import 'package:flutter/material.dart';



Padding smallButton(BuildContext context, Widget link) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => link));
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Ink(
        child: Container(
          width: 70,
          height: 32,
          alignment: Alignment.center,
          child: Text(
            "Start",
            style: label_medium(mediumPurple),
          ),
        ),
      ),
    ),
  );
}