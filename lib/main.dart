import 'package:drum/global.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = "click1";
  int currentIndex = 0;
  bool isChecked = false;
  var _result;
  bool showTextField = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("123"),
          ),
          body: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(220, 170, 228, 1),
                    ),
                  ),
                  labelText: 'Enter your username',
                ),
              ),
              Container(
  height: 50.0,
  child: ElevatedButton(
    onPressed: () {},
    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
    // padding: EdgeInsets.all(0.0),
    child: Ink(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xffba46c3), Color(0xff802188)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(30.0)
      ),
      child: Container(
        constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
        alignment: Alignment.center,
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white
          ),
        ),
      ),
    ),
  ),
),
            ],
          ),
        ));
  }
}
