import 'package:drum/global.dart';
import 'package:flutter/material.dart';

class Level extends StatefulWidget {
  const Level({super.key});

  @override
  State<Level> createState() => _LevelState();
}

class _LevelState extends State<Level> {
  @override
  bool isSelected = false;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: Text(
            "Choose your level",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: blackDrum),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: blackDrum,
            ),
          ),
        ),
        body: SafeArea(
          child: Align(alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = true;
                    });
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 26.0),
                          child: isSelected == true
                              ? Image.asset("images/firstLevelWhite.png")
                              : Image.asset("images/firstLevelBlack.png"),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 4),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: isSelected == true
                                          ? Colors.white
                                          : blackDrum,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                    width: 6,
                                    height: 16,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 4),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: isSelected == true
                                          ? Colors.white.withOpacity(0.5)
                                          : blackDrum.withOpacity(0.5),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                    width: 6,
                                    height: 16,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: isSelected == true
                                          ? Colors.white.withOpacity(0.5)
                                          : blackDrum.withOpacity(0.5),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                    width: 6,
                                    height: 16,
                                  ),
                                ),
                                Text(
                                  "Begginer",
                                  style: TextStyle(
                                      color: isSelected == true
                                          ? Colors.white
                                          : blackDrum,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 26.0, top: 8),
                              child: Text(
                                "I'm just starting to learn",
                                style: TextStyle(
                                    color: isSelected == true
                                        ? Colors.white
                                        : mediumBlackDrum,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      boxShadow:  [
                        BoxShadow(
                          color:isSelected == true ? Colors.black.withOpacity(0.2)  :  Colors.transparent,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                      gradient: isSelected == true ? gradient : gradient2,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    width: 328,
                    height: 140,
                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = true;
                    });
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 26.0),
                          child: isSelected == true
                              ? Image.asset("images/firstLevelWhite.png")
                              : Image.asset("images/firstLevelBlack.png"),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 4),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: isSelected == true
                                          ? Colors.white
                                          : blackDrum,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                    width: 6,
                                    height: 16,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 4),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: isSelected == true
                                          ? Colors.white.withOpacity(0.5)
                                          : blackDrum.withOpacity(0.5),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                    width: 6,
                                    height: 16,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: isSelected == true
                                          ? Colors.white.withOpacity(0.5)
                                          : blackDrum.withOpacity(0.5),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                    width: 6,
                                    height: 16,
                                  ),
                                ),
                                Text(
                                  "Begginer",
                                  style: TextStyle(
                                      color: isSelected == true
                                          ? Colors.white
                                          : blackDrum,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 26.0, top: 8),
                              child: Text(
                                "I'm just starting to learn",
                                style: TextStyle(
                                    color: isSelected == true
                                        ? Colors.white
                                        : mediumBlackDrum,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      boxShadow:  [
                        BoxShadow(
                          color:isSelected == true ? Colors.black.withOpacity(0.2)  :  Colors.transparent,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                      gradient: isSelected == true ? gradient : gradient2,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    width: 328,
                    height: 140,
                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = true;
                    });
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 26.0),
                          child: isSelected == true
                              ? Image.asset("images/firstLevelWhite.png")
                              : Image.asset("images/firstLevelBlack.png"),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 4),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: isSelected == true
                                          ? Colors.white
                                          : blackDrum,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                    width: 6,
                                    height: 16,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 4),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: isSelected == true
                                          ? Colors.white.withOpacity(0.5)
                                          : blackDrum.withOpacity(0.5),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                    width: 6,
                                    height: 16,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: isSelected == true
                                          ? Colors.white.withOpacity(0.5)
                                          : blackDrum.withOpacity(0.5),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                    width: 6,
                                    height: 16,
                                  ),
                                ),
                                Text(
                                  "Begginer",
                                  style: TextStyle(
                                      color: isSelected == true
                                          ? Colors.white
                                          : blackDrum,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 26.0, top: 8),
                              child: Text(
                                "I'm just starting to learn",
                                style: TextStyle(
                                    color: isSelected == true
                                        ? Colors.white
                                        : mediumBlackDrum,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      boxShadow:  [
                        BoxShadow(
                          color:isSelected == true ? Colors.black.withOpacity(0.2)  :  Colors.transparent,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                      gradient: isSelected == true ? gradient : gradient2,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    width: 328,
                    height: 140,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
