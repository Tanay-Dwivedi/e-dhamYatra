import 'package:e_chardham_yatra/widget/title.dart';
import 'package:flutter/material.dart';

Card destinationCard(title, image) {
  return Card(
    child: Column(children: [
      Container(
        margin: const EdgeInsets.only(left: 8),
        height: 120,
        width: 100,
        decoration: BoxDecoration(
            color: image, borderRadius: BorderRadius.circular(10)),
      ),
      smallTitle(title)
    ]),
  );
}
