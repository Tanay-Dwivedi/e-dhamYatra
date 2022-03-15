import 'package:flutter/material.dart';

Widget medTitle(text, double bp, double tp) {
  return Container(
      padding: EdgeInsets.only(top: tp, bottom: bp, left: 16),
      child: Text(
        text,
        style: const TextStyle(
            fontFamily: 'Poppins-Bold',
            fontWeight: FontWeight.w900,
            fontSize: 22),
      ));
}

Widget smallTitle(text) {
  return Text(
    text,
    style: const TextStyle(
        fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 14),
  );
}

Widget heading(text) {
  return Text(
    text,
    style: const TextStyle(
        fontFamily: 'Poppins', fontWeight: FontWeight.w800, fontSize: 18),
  );
}
