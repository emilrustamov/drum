import 'package:flutter/material.dart';

Color red = Color(0xffB3261E);
Color white = Color(0xffE4E6E9);
Color lightWhite = Color(0xfff8f9fe);
Color superLightPurple = Color(0xffE8DEF8);
Color lightPurple = Color(0xffDCAAE4);
Color mediumPurple = Color(0xff802188);
Color darkPurpleDrum1 = Color(0xffBA46C3);
Color darkPurpleDrum2 = Color(0xff802188);
Color grey = Color(0xff768192);
Color black = Color(0xff373737);
Gradient gradient = LinearGradient(colors: [darkPurpleDrum1, darkPurpleDrum2]);
Gradient gradient2 = LinearGradient(colors: [Colors.white, Colors.white]);



TextStyle title_medium() {
  return TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: black);
}

TextStyle label_large() {
  return TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white);
}

TextStyle label_medium() {
  return TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: grey);
}

TextStyle body_small() {
  return TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: grey, height: 1.5);
}


 