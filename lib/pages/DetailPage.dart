import 'dart:ui';

import 'package:e_chardham_yatra/values/colors.dart';
import 'package:e_chardham_yatra/values/dimens.dart';
import 'package:e_chardham_yatra/widget/back_button.dart';
import 'package:e_chardham_yatra/widget/title.dart';
import 'package:flutter/material.dart';
import '../place_data.dart';

class DetailPage extends StatelessWidget {
  final Place place;
  const DetailPage({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: ListView(
      children: [
        Stack(children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(18),
                  bottomRight: Radius.circular(18)),
              child:
                  Hero(tag: place.tag, child: Image.asset(place.displayImage))),
          const AppBackButton(),
          Positioned(
              bottom: 20,
              left: 20,
              child: Text(place.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.w800)))
        ]),
      ],
    ));
  }
}
