import 'package:drum/global.dart';
import 'package:drum/listTrains.dart';
import 'package:drum/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:native_video_player/native_video_player.dart';

class Day extends StatefulWidget {
  int days;
  Day({Key? key, required this.days}) : super(key: key);

  @override
  State<Day> createState() => _DayState();
}

class _DayState extends State<Day> {
  int days = 0;

  NativeVideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    days = widget.days;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    bool selectedLevel = true;
    return Container(
        height: height,
        width: width,
        color: white,
        child: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.white,
              body: Stack(
                children: [
                  body(width, height),
                  appBar(width, height, context, days),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.05, vertical: height * 0.028),
                      child: ElevatedButton(
                        onPressed: () {
                          bottomSheet(context, width, height);
                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: gradient,
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            width: width * 0.91,
                            height: height * 0.07,
                            alignment: Alignment.center,
                            child: Text(
                              "Continue",
                              style: label_large(Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          // body: Container(),
        ));
  }

  Future<dynamic> bottomSheet(
    BuildContext context,
    double w,
    double h,
  ) {
    int lessonNum = 1;
    return showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isDismissible: true,
        context: context,
        isScrollControlled: true,
        builder: (builder) {
          return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.62,
                padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: MediaQuery.of(context).size.height * 0.037),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AspectRatio(
                      aspectRatio: 12 / 6.5,
                      child: Stack(
                        children: [
                          NativeVideoPlayerView(
                            onViewReady: (controller) async {
                              _controller = controller;
                              await _controller?.setVolume(1);
                              await _loadVideoSource();
                            },
                          ),
                          Material(
                            type: MaterialType.transparency,
                            child: InkWell(
                              onTap: _togglePlayback,
                              child: Center(
                                child: FutureBuilder(
                                  future: _isPlaying,
                                  initialData: false,
                                  builder: (
                                    BuildContext context,
                                    AsyncSnapshot<bool> snapshot,
                                  ) {
                                    final isPlaying = snapshot.data ?? false;
                                    return Icon(
                                      isPlaying
                                          ? Icons.pause
                                          : Icons.play_arrow,
                                      size: 64,
                                      color: Colors.white,
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: h * 0.02),
                      child: Text(
                        "Warming arms",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: h * 0.01),
                      child: Text(
                        "Time: 7 min 30 sec",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    ...List.generate(
                      3,
                      (index) => Padding(
                        padding: EdgeInsets.symmetric(vertical: h * 0.01),
                        child: Text(
                          "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text",
                          style: TextStyle(fontSize: 12, color: grey),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.01),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  if (lessonNum != 1) {
                                    setState(() {
                                      lessonNum--;
                                    });
                                  }
                                },
                                child: Container(
                                  padding: EdgeInsets.all(w * 0.005),
                                  decoration: BoxDecoration(
                                      color: lessonNum == 1
                                          ? lightPurple
                                          : darkPurple,
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child: RotatedBox(
                                        quarterTurns: 90,
                                        child: Icon(Icons.east,
                                            color: Colors.white)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: w * 0.05),
                                child: Text(
                                  "$lessonNum/9",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  if (lessonNum != 9) {
                                    setState(() {
                                      lessonNum++;
                                    });
                                  }
                                },
                                child: Container(
                                  padding: EdgeInsets.all(w * 0.005),
                                  decoration: BoxDecoration(
                                      color: lessonNum == 9
                                          ? lightPurple
                                          : darkPurple,
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child:
                                        Icon(Icons.east, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: w * 0.4,
                              height: h * 0.05,
                              decoration: BoxDecoration(
                                  border: Border.all(color: darkPurple),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Text(
                                  "Close",
                                  style: TextStyle(color: darkPurple),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          );
        });
  }

  Future<void> _loadVideoSource() async {
    final videoSource = await VideoSource.init(
      type: VideoSourceType.asset,
      path: "images/lesson.mp4",
    );
    await _controller?.loadVideoSource(videoSource);
  }

  Future<void> _togglePlayback() async {
    final isPlaying = await _isPlaying;
    if (isPlaying) {
      await _controller?.pause();
    } else {
      await _controller?.play();
    }
    setState(() {});
  }

  Future<bool> get _isPlaying async => await _controller?.isPlaying() ?? false;
}

// Positioned buttons(double width, double height) {
//   return Positioned(
//     top: height * 0.85,
//     left: width * 0.1,
//     width: width * 0.8,
//     height: height * 0.07,
//     child: Container(
//       decoration: BoxDecoration(
//           color: darkPurple, borderRadius: BorderRadius.circular(12)),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             "Start",
//             textAlign: TextAlign.center,
//             style: TextStyle(color: white, fontSize: 20),
//           ),
//         ],
//       ),
//     ),
//   );
// }

Container body(double w, double h) {
  return Container(
      width: w,
      height: h,
      color: Colors.white,
      padding: EdgeInsets.only(top: h * 0.18, right: w * 0.05, left: w * 0.05),
      child: Padding(
        padding: EdgeInsets.only(bottom: h * 0.15),
        child: ListView(physics: BouncingScrollPhysics(), children: [
          ...List.generate(
              9,
              (index) => Padding(
                    padding: EdgeInsets.symmetric(vertical: h * 0.01),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: h * 0.02, horizontal: w * 0.05),
                      width: w,
                      decoration: BoxDecoration(
                          color: lightWhite,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Row(
                        children: [
                          Text("${index + 1}",
                              style:
                                  TextStyle(color: darkPurple, fontSize: 20)),
                          Padding(
                            padding: EdgeInsets.only(left: w * 0.07),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Warming arms", style: label_large(black)),
                                Text("7 min 30 sec", style: body_small(grey)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ))
        ]),
      ));
}

Widget appBar(double width, double height, BuildContext context, int days) {
  return Container(
    width: width,
    height: height * 0.18,
    alignment: Alignment.center,
    padding: EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
      color: superLightPurple,
    ),
    child: Stack(
      // alignment: AlignmentDirectional.centerStart,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child:
                              Icon(Icons.arrow_back, color: black, size: 20)),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.05),
                        child: Text(
                          "Day $days",
                          style: TextStyle(color: black, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    ...List.generate(
                      levelInfo.length,
                      (index) => Padding(
                        padding: EdgeInsets.only(right: width * 0.01),
                        child: Container(
                          decoration: BoxDecoration(
                            color: level == 0 && index <= 0 ||
                                    level == 1 && index <= 1 ||
                                    level == 2 && index <= 2
                                ? grey
                                : grey.withOpacity(0.5),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          width: width * 0.018,
                          height: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.02),
                      child: Text(
                        levelInfo[level]['name'],
                        style: TextStyle(color: black, fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "9 Exercises",
                        style: body_medium(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.05),
                        child: Text(
                          "30 min",
                          style: TextStyle(color: grey, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SvgPicture.asset("images/nots.svg"),
                    SvgPicture.asset(
                      "images/first_lev_b.svg",
                      color: darkPurple,
                      width: width * 0.2,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ],
    ),
  );
}
