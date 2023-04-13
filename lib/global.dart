import 'package:drum/listTrains.dart';
import 'package:drum/profile.dart';
import 'package:drum/statistycs.dart';
import 'package:flutter/material.dart';

Color red = Color(0xffB3261E);
Color white = Color(0xffE4E6E9);
Color lightWhite = Color(0xfff8f9fe);
Color superLightPurple = Color(0xffE8DEF8);
Color lightPurple = Color(0xffDCAAE4);
Color mediumPurple = Color(0xffBA46C3);
Color darkPurple = Color(0xff802188);
Color grey = Color(0xff768192);
Color black = Color(0xff373737);
Color black200 = Color(0xff768192);
Gradient gradient = LinearGradient(colors: [mediumPurple, darkPurple]);
Gradient disgradient = LinearGradient(colors: [grey, black]);
Gradient gradient2 = LinearGradient(colors: [Colors.white, Colors.white]);

// User
final username = TextEditingController();
int level = 0;

int page = 0;
List tabs = [ListTrains(), Statystics(), Profile()];

List levelInfo = [
  {
    "name": "Beginner",
    "subname": "I'm just starting to learn",
    "disImage": "images/first_lev_b.svg",
    "activImage": "images/first_lev_w.svg"
  },
  {
    "name": "Intermediate",
    "subname": "I train every week to improve my skills",
    "disImage": "images/second_lev_b.svg",
    "activImage": "images/first_lev_w.svg"
  },
  {
    "name": "Advanced",
    "subname": "I play drums well and practice every day",
    "disImage": "images/third_lev_b.svg",
    "activImage": "images/first_lev_w.svg"
  },
];

TextStyle title_medium(Color textcolor) {
  return TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: textcolor);
}

TextStyle title_small(Color textcolor) {
  return TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: textcolor);
}

TextStyle label_large(Color textcolor) {
  return TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: textcolor);
}

TextStyle label_medium(Color textcolor) {
  return TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: textcolor);
}

TextStyle body_lagre(Color textcolor) {
  return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: textcolor,
      height: 1.5);
}

TextStyle body_medium() {
  return TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: grey, height: 1.5);
}

TextStyle body_small(Color colors) {
  return TextStyle(
      fontSize: 12, fontWeight: FontWeight.w400, color: colors, height: 1.5);
}
// Row vitaminka(Color? emilColor, int length, int levelInd, bool? selected) {
//   int sum = length - levelInd;
//   return Row(
//     children: [
//       ...List.generate(length, (index) {
//         return Padding(
//           padding: const EdgeInsets.only(right: 2),
//           child: Container(
//             padding: EdgeInsets.only(right: 4),
//             decoration: BoxDecoration(
//               // index < sum
//               color: selected == false ? emilColor!.withOpacity(1) : white,
//               borderRadius: BorderRadius.all(
//                 Radius.circular(12),
//               ),
//             ),
//             width: 6,
//             height: 16,
//           ),
//         );
//       }),
//     ],
//   );
// }

// AppBar appBar(BuildContext context) {
//   return MyAppbar();
// }

// class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
//   const MyAppbar({required this.w});
//   final double w;
//   @override
//   Size get preferredSize => Size(w, 56);
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       elevation: 0,
//       backgroundColor: Color.fromARGB(255, 255, 255, 255),
//       title: Text(
//         "Choose your level",
//         style: title_medium(black),
//       ),
//       leading: GestureDetector(
//         onTap: () {
//           Navigator.pop(context);
//         },
//         child: Icon(
//           Icons.arrow_back,
//           color: black,
//         ),
//       ),
//     );
//   }
// }
