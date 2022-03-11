import 'package:e_chardham_yatra/widget/card.dart';
import 'package:e_chardham_yatra/widget/title.dart';
import 'package:flutter/material.dart';

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
        Container(
          height: 300,
          width: double.infinity,
          color: Colors.lightBlue,
        ),
        medTitle("Explore"),
        Row(
          children: [
            exploreTiles("Spritual"),
            exploreTiles("Treckking"),
            exploreTiles("Nature"),
            exploreTiles("Wildlife")
          ],
        ),
        medTitle("Top Destinations"),
        Row(
          children: [
            destinationCard("title1", Colors.red[100]),
            destinationCard("title2", Colors.green[100]),
            destinationCard("title3", Colors.purple[100]),
          ],
        )
      ],
    );
  }
}

Widget exploreTiles(String title) {
  return Expanded(
      child: Column(
    children: [
      // TODO: Icon to be added here
      MaterialButton(
        color: Colors.blueAccent,
        padding: const EdgeInsets.all(16),
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(
          Icons.abc,
          color: Colors.white,
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
