import 'package:drum/global.dart';
import 'package:flutter/material.dart';

class ListTrains extends StatefulWidget {
  const ListTrains({super.key});

  @override
  State<ListTrains> createState() => _ListTrainsState();
}

class _ListTrainsState extends State<ListTrains> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            ...List.generate(30, (index) {
              return Center(
                child: Container(
                  margin: EdgeInsets.only(bottom: 12),
                  padding: EdgeInsets.all(20),
                  width: width * 0.91,
                  height: 64,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      gradient: gradient,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text('Day ${index}'),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
