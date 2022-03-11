import 'package:flutter/material.dart';

Widget medTitle(text) {
  return Container(
      padding: const EdgeInsets.only(top: 18, bottom: 4, left: 16),
      child: Text(
        text,
        style: const TextStyle(
            fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 20),
      ));
}

Widget smallTitle(text) {
  return Text(
    text,
    style: const TextStyle(
        fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 14),
  );
}
