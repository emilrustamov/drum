import 'package:datetime_picker_field_platform/datetime_picker_field_platform.dart';
import 'package:drum/global.dart';
import 'package:drum/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Reminders extends StatefulWidget {
  const Reminders({Key? key}) : super(key: key);

  @override
  State<Reminders> createState() => _RemindersState();
}

class _RemindersState extends State<Reminders> {
  List times = [];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final timeFormats = new DateFormat('HH:mm');
    String myTime = "";
    return Scaffold(
        appBar: myAppbar(context, "Reminders", Icons.arrow_back),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: w * 0.05),
          child: ListView(
            children: [
              ...List.generate(
                  times.length,
                  (index) => Padding(
                        padding: EdgeInsets.only(bottom: h * 0.01),
                        child: Container(
                          padding: EdgeInsets.all(w * 0.05),
                          decoration: BoxDecoration(
                              color: superLightPurple,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    times[index]['times'],
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Switch.adaptive(
                                      value: times[index]['active'],
                                      onChanged: (e) {
                                        setState(() {
                                          times[index]['active'] = e;
                                        });
                                      })
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Repeat",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      Text(
                                        "Sun, Mon, Tue, Wed, Thu, Fri, Sat",
                                        style: TextStyle(
                                            fontSize: 14, color: black200),
                                      ),
                                    ],
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        times.removeAt(index);
                                      });
                                    },
                                    child: Icon(
                                      Icons.delete,
                                      color: black200,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )),
              DateTimeFieldPlatform(
                mode: DateMode.time,
                timeFormatter: "HH:mm:ss",
                title: "Select time",
                textConfirm: "OK",
                onConfirm: (time) {
                  myTime = timeFormats.format(time);
                  print(myTime);
                  times.add({
                    'times': myTime,
                    'active': false,
                  });
                  setState(() {});
                },
                decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    hintText: "+ Add new reminder",
                    hintStyle: TextStyle(fontSize: 18, color: darkPurple)),
                maximumDate: DateTime.now().add(const Duration(hours: 2)),
                minimumDate: DateTime.now().subtract(const Duration(hours: 2)),
              ),
            ],
          ),
        ));
  }
}
