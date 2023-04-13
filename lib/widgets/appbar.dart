
import 'package:drum/global.dart';
import 'package:flutter/material.dart';

PreferredSize myAppbar(String text, IconData? icon) {
    return PreferredSize(
      preferredSize: Size.fromHeight(56),
      child: AppBar(backgroundColor: Colors.transparent, elevation: 0,
        leading: GestureDetector(onTap: () {
          
          
        },
          child: Icon(
            icon,
            color: black,
          ),
        ),
        title: Text(
          text,
          style: title_medium(black),
        ),
      ),
    );
  }
