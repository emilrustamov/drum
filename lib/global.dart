import 'package:flutter/material.dart';

import 'level.dart';

Color red = Color(0xffB3261E);
Color white = Color(0xffE4E6E9);
Color lightWhite = Color(0xfff8f9fe);
Color superLightPurple = Color(0xffE8DEF8);
Color lightPurple = Color(0xffDCAAE4);
Color mediumPurple = Color(0xffBA46C3);
Color darkPurple = Color(0xff802188);
Color grey = Color(0xff768192);
Color black = Color(0xff373737);
Gradient gradient = LinearGradient(colors: [mediumPurple, darkPurple]);
Gradient gradient2 = LinearGradient(colors: [Colors.white, Colors.white]);

TextStyle title_medium() {
  return TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: black);
}

TextStyle label_large(Color textcolor) {
  return TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: textcolor);
}

TextStyle label_medium(Color textcolor) {
  return TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: textcolor);
}

TextStyle body_small() {
  return TextStyle(
      fontSize: 12, fontWeight: FontWeight.w400, color: grey, height: 1.5);
}

TextStyle body_medium() {
  return TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: grey, height: 1.5);
}

Padding primaryButton(BuildContext context, Widget link) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => link));
      },
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Ink(
        decoration: BoxDecoration(
            gradient: gradient, borderRadius: BorderRadius.circular(20)),
        child: Container(
          width: width * 0.9,
          height: 50,
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

Row vitaminka(Color? emilColor, bool? selected) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(right: 2),
        child: Container(
          padding: EdgeInsets.only(right: 4),
          decoration: BoxDecoration(
            // index < sum
            color: selected == false ? emilColor!.withOpacity(1) : white,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          width: 6,
          height: 16,
        ),
      )
    ],
  );
}

AppBar appBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Color.fromARGB(255, 255, 255, 255),
    title: Text(
      "Choose your level",
      style: title_medium(),
    ),
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back,
        color: black,
      ),
    ),
  );
}
