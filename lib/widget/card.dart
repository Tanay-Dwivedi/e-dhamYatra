import 'package:e_chardham_yatra/pages/DetailPage.dart';
import 'package:e_chardham_yatra/pages/HomePage.dart';
import 'package:e_chardham_yatra/widget/title.dart';
import 'package:flutter/material.dart';
import 'package:e_chardham_yatra/place_data.dart';

// ignore: camel_case_types
class destinationCard extends StatelessWidget {
  Place place;
  destinationCard({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
          borderRadius: BorderRadius.circular(radius),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailPage(place: place)));
          },
          child: Column(children: [
            Container(
              margin: const EdgeInsets.all(4),
              height: 140,
              width: 120,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(radius),
                  child: Image.asset(
                    place.displayImage,
                    fit: BoxFit.cover,
                  )),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
            ),
            smallTitle(place.title)
          ])),
    );
  }
}
