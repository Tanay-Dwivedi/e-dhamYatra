import 'package:e_chardham_yatra/pages/AccomodationPage.dart';
import 'package:e_chardham_yatra/pages/BlogPage.dart';
import 'package:e_chardham_yatra/pages/CalendarPage.dart';
import 'package:e_chardham_yatra/pages/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Utrakhand Tourism', home: BottomNav());
  }
}

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  static const double iconSize = 35;
  int _selectedIndex = 1;

  static const List<Widget> _pages = [
    HomePage(),
    AccomodationPage(),
    CalendarPage(),
    BlogPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages.elementAt(_selectedIndex),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.all(30),
          decoration: const BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(250)),
              boxShadow: [
                BoxShadow(
                    offset: Offset(5, 10),
                    color: Color(0x54000000),
                    spreadRadius: 4,
                    blurRadius: 20),
              ]),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: false, // <-- HERE
                showUnselectedLabels: false,
                backgroundColor: const Color(0xFF44BCFF),
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white.withOpacity(.60),
                selectedFontSize: 14,
                unselectedFontSize: 14,
                onTap: _onItemTapped,
                currentIndex: _selectedIndex,
                // ignore: prefer_const_literals_to_create_immutables
                items: [
                  const BottomNavigationBarItem(
                    label: 'Home',
                    icon: Icon(Icons.home_rounded, size: iconSize),
                  ),
                  const BottomNavigationBarItem(
                    label: 'hotel',
                    icon: Icon(Icons.hotel_rounded, size: iconSize),
                  ),
                  const BottomNavigationBarItem(
                    label: 'calender',
                    icon: Icon(Icons.today_rounded, size: iconSize),
                  ),
                  const BottomNavigationBarItem(
                    label: 'chat',
                    icon: Icon(Icons.forum_rounded, size: iconSize),
                  ),
                ],
              )),
        ));
  }
}
