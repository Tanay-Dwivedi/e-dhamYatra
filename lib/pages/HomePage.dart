import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_chardham_yatra/place_data.dart';
import 'package:e_chardham_yatra/widget/card.dart';
import 'package:e_chardham_yatra/widget/title.dart';
import 'package:flutter/material.dart';

double radius = 12;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(padding: EdgeInsets.all(40)),
        CarouselSlider(
          items: [
            for (var display in places)
              Stack(alignment: Alignment.bottomLeft, children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(radius),
                    image: DecorationImage(
                        image: AssetImage(display.displayImage),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(radius),
                      color: Colors.white,
                      gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(0),
                            Colors.black.withOpacity(.6),
                          ],
                          stops: const [
                            0.0,
                            1.0
                          ])),
                ),
                Padding(
                    padding: const EdgeInsets.only(bottom: 10, left: 20),
                    child: Text(
                      display.title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ))
              ])
          ],
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
          ),
        ),
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
                for (var place in places) destinationCard(place: place)
              ],
            )),
        medTitle("Char Dham", 0, 20),
        SingleChildScrollView(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 80),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var place in places)
                  destinationCard(
                    place: place,
                  )
              ],
            )),
      ],
    );
  }
}

Widget exploreTiles(String title, IconData icon) {
  return Expanded(
      child: Column(
    children: [
      // TODO: Icon to be added here
      MaterialButton(
        color: Colors.blue[100],
        padding: const EdgeInsets.all(16),
        shape: const CircleBorder(),
        onPressed: () {},
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),

      Container(
          padding: const EdgeInsets.all(4),
          child: Text(
            title,
          ))
    ],
  ));
}
