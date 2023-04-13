import 'package:drum/global.dart';
import 'package:flutter/material.dart';


Padding primaryButton(BuildContext context, Widget link, bool status, String textButt) {
  double w = MediaQuery.of(context).size.width;
  double h = MediaQuery.of(context).size.height;
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: w*0.05, vertical: h*0.028),
    child: ElevatedButton(
      onPressed: () {
        status == true
            ? Navigator.push(
                context, MaterialPageRoute(builder: (context) => link))
            : Container();
      },
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Ink(
        decoration: BoxDecoration(
            gradient: status == true ? gradient : disgradient,
            borderRadius: BorderRadius.circular(20)),
        child: Container(
          width: w * 0.91,
          height: h*0.07,
          alignment: Alignment.center,
          child: Text(
            "Continue",
            style: label_large(Colors.white),
          ),
        ),
      ),
    ),
  );
}