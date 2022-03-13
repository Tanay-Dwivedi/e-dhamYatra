import 'package:flutter/cupertino.dart';

class Place {
  String title;
  String description;
  String displayImage;

  Place(
      {required this.title,
      required this.description,
      required this.displayImage});
}

final places = <Place>[p1, p2, p3, p4, p5];

final p1 = Place(
    title: "Kedarnath",
    description: "Welcome to Kedarnath",
    displayImage: 'images/1.jpg');

final p2 = Place(
    title: "Badrinath",
    description: "Welcome to Badrinath",
    displayImage: 'images/2.jpeg');

final p3 = Place(
    title: "Rishikesh",
    description: "Welcome to Rishikesh",
    displayImage: 'images/3.jpeg');

final p4 = Place(
    title: "Nainital",
    description: "Welcome to Nainital",
    displayImage: 'images/4.jpeg');

final p5 = Place(
    title: "Mussoorie ",
    description: "Welcome to Mussoorie",
    displayImage: 'images/5.jpeg');
