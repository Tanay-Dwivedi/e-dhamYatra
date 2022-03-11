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
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          "Explore",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),
        Container(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            child: Row(
              children: [
                exploreTiles("Spritual"),
                exploreTiles("Treckking"),
                exploreTiles("Nature"),
                exploreTiles("Wildlife")
              ],
            ))
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
          padding: const EdgeInsets.all(5),
          child: Text(
            title,
            style: TextStyle(fontFamily: ),
          ))
    ],
  ));
}
