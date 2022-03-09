import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Utrakhand Tourism',
      home: BottomNav(),
    );
  }
}

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNav();
}

class _BottomNav extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          margin: const EdgeInsets.all(30),
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(50)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false, // <-- HERE
            showUnselectedLabels: false,
            backgroundColor: const Color(0xFF44BCFF),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(.60),
            selectedFontSize: 14,
            unselectedFontSize: 14,
            onTap: (value) {
              // Respond to item press.
            },
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              const BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
              ),
              const BottomNavigationBarItem(
                label: 'Music',
                icon: Icon(Icons.music_note),
              ),
              const BottomNavigationBarItem(
                label: 'Places',
                icon: Icon(Icons.location_on),
              ),
              const BottomNavigationBarItem(
                label: 'News',
                icon: Icon(Icons.library_books),
              ),
            ],
          )),
    );
  }
}
