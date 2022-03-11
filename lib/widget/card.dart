import 'package:e_chardham_yatra/widget/title.dart';
import 'package:flutter/material.dart';

Card destinationCard(title, image) {
  return Card(
    elevation: 6,
    color: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    child: Column(children: [
      Container(
        margin: const EdgeInsets.all(4),
        height: 120,
        width: 100,
        decoration: BoxDecoration(
            color: image, borderRadius: BorderRadius.circular(10)),
      ),
      smallTitle(title)
    ]),
  );
}
