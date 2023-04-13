import 'package:drum/global.dart';
import 'package:flutter/material.dart';

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