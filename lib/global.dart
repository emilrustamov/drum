import 'package:flutter/material.dart';

Color redDrum = Color(0xffB3261E);
Color whiteDrum = Color(0xffE4E6E9);
Color superLightPurpleDrum = Color(0xffE8DEF8);
Color lightPurpleDrum = Color(0xffDCAAE4);
Color mediumPurpleDrum = Color(0xff802188);
Color darkPurpleDrum1 = Color(0xffBA46C3);
Color darkPurpleDrum2 = Color(0xff802188);
Color blackDrum = Color(0xff768192);
Color mediumBlackDrum = Color(0xff373737);
Gradient gradient = LinearGradient(colors: [darkPurpleDrum1, darkPurpleDrum2]);
Gradient gradient2 = LinearGradient(colors: [Colors.white, Colors.white]);

TextStyle h1() {
  return TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: blackDrum);
}

TextStyle title_medium() {
  return TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: blackDrum);
}

TextStyle label_large() {
  return TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: blackDrum);
}
