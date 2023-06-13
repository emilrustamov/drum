
import 'package:drum/global.dart';
import 'package:flutter/material.dart';

PreferredSize myAppbar(BuildContext context,String text, IconData? icon) {
    return PreferredSize(
      preferredSize: Size.fromHeight(56),
      child: AppBar(backgroundColor: Colors.transparent, elevation: 0,
        leading: GestureDetector(onTap: () { 
          Navigator.pop(context);
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
