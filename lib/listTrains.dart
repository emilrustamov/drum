import 'package:drum/global.dart';
import 'package:drum/level.dart';
import 'package:flutter/material.dart';

class ListTrains extends StatefulWidget {
  const ListTrains({super.key});

  @override
  State<ListTrains> createState() => _ListTrainsState();
}

class _ListTrainsState extends State<ListTrains> {
    bool isShow = false;
  @override

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.school,
            color: mediumPurple,
          ),
          label: 'Exercies',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment),
          label: 'Statitics',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          label: 'Me',
        )
      ]),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Level()));
              });
            },
            child: Padding(
              padding: EdgeInsets.only(right: width * 0.04),
              child: Icon(
                Icons.swap_horiz,
                color: mediumPurple,
              ),
            ),
          )
        ],
        title: Text(
          "Beginner: Exercises (0/30)",
          style: title_medium(),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            ...List.generate(30, (index) {
              return GestureDetector(onTap: () {
                setState(() {
                  isShow = !isShow;
                });
              },
                child: Container(
                  margin: EdgeInsets.only(bottom: 12),
                  padding: EdgeInsets.all(20),
                  width: width * 0.91,
                  height: 100,
                  decoration: BoxDecoration(
                      gradient: isShow == true ? gradient : gradient2,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Day ${index}',
                            style: label_large(),
                          ),
                          Text(
                            '0/9 exercises',
                            style: label_medium(),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [  
                          Visibility(
                            visible: isShow,
                              child: ElevatedButton(
                                  onPressed: () {}, child: Text("1")))
                        ],
                      ),
                    ],
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
