import 'package:e_chardham_yatra/place_data.dart';
import 'package:e_chardham_yatra/widget/card.dart';
import 'package:e_chardham_yatra/widget/carousel_slider.dart';
import 'package:e_chardham_yatra/widget/explore_tile.dart';
import 'package:e_chardham_yatra/widget/title.dart';
import 'package:flutter/material.dart';

import '../widget/rounded_input_feild.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double totalWidth = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        Stack(alignment: Alignment.bottomCenter, children: [
          const AppCarouselSlider(),
          RoundedInputFeild(
              leftPadding: 0,
              rightPadding: 0,
              width: totalWidth * 0.9,
              hintText: "Search",
              icon: Icons.search_rounded,
              action: TextInputAction.go,
              keyboardType: TextInputType.text,
              inputFormatters: const []),
          Container(
              margin: EdgeInsets.only(left: totalWidth * 0.8, bottom: 90),
              child: MaterialButton(
                height: 50,
                onPressed: () {},
                color: Colors.grey,
                shape: const CircleBorder(),
                child: const Icon(Icons.person),
              )),
        ]),
        medTitle("Explore", 12, 20),
        Row(
          children: [
            exploreTiles("Spiritual", Icons.temple_hindu_rounded),
            exploreTiles("Adventure", Icons.ac_unit_rounded),
            exploreTiles("Nature", Icons.nature_rounded),
            exploreTiles("Wildlife", Icons.pets_rounded)
          ],
        ),
        medTitle("Top Destinations", 6, 20),
        SingleChildScrollView(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 10),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var place in places) DestinationCard(place: place)
              ],
            )),
        medTitle("Char Dham", 0, 20),
        // SingleChildScrollView(
        //     padding: const EdgeInsets.only(left: 8, right: 8, bottom: 80),
        //     scrollDirection: Axis.horizontal,
        //     child: Row(
        //       children: [
        //         for (var place in places)
        //           DestinationCard(
        //             place: place,
        //           )
        //       ],
        //     )),
      ],
    );
  }
}
