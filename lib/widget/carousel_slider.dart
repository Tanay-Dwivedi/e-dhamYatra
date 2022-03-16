import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../place_data.dart';

class AppCarouselSlider extends StatelessWidget {
  const AppCarouselSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        for (var display in places)
          Stack(alignment: Alignment.bottomLeft, children: [
            Container(
              margin: const EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(display.displayImage), fit: BoxFit.cover),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(.8),
                      ],
                      stops: const [
                        0.0,
                        1.0
                      ])),
            ),
            Padding(
                padding: const EdgeInsets.only(bottom: 95, left: 30),
                child: Text(
                  display.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.w800),
                ))
          ])
      ],
      options: CarouselOptions(
        autoPlayInterval: const Duration(seconds: 5),
        viewportFraction: 1,
        autoPlay: true,
        enlargeCenterPage: false,
        aspectRatio: 4 / 3,
      ),
    );
  }
}
