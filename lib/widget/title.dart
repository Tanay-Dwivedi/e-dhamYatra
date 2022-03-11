import 'package:flutter/material.dart';

Widget medTitle(text) {
  return Container(
      padding: const EdgeInsets.all(16),
      child: Text(
        text,
        style: const TextStyle(
            fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 20),
      ));
}
