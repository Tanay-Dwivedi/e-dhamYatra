import 'package:e_chardham_yatra/widget/title.dart';
import 'package:flutter/material.dart';

Card destinationCard(title, image) {
  return Card(
    elevation: 6,
    color: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {},
        child: Column(children: [
          Container(
            margin: const EdgeInsets.all(4),
            height: 140,
            width: 120,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'images/1.jpg',
                  fit: BoxFit.cover,
                )),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          ),
          smallTitle("Kedarnath")
        ])),
  );
}
