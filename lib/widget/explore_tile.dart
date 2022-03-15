import 'package:e_chardham_yatra/values/colors.dart';
import 'package:flutter/material.dart';

Widget exploreTiles(String title, IconData icon) {
  return Expanded(
      child: Column(
    children: [
      MaterialButton(
        color: AppColor.primary,
        padding: const EdgeInsets.all(16),
        shape: const CircleBorder(),
        onPressed: () {},
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
      Container(
          padding: const EdgeInsets.all(4),
          child: Text(
            title,
          ))
    ],
  ));
}
