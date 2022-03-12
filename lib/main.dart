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
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Poppins'),
        title: 'Utrakhand Tourism',
        home: const BottomNav());
  }
}

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  static const double iconSize = 30;
  int _selectedIndex = 0;

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
        body: Stack(
      children: [
        _pages.elementAt(_selectedIndex),
        Align(
            alignment: Alignment.bottomCenter,
            child: Theme(
                child: newMethod(),
                data: Theme.of(context)
                    .copyWith(canvasColor: Colors.transparent)))
      ],
    ));
  }

  Container newMethod() {
    return Container(
        margin: const EdgeInsets.only(bottom: 20, left: 30, right: 30),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(4, 14),
                color: Color.fromARGB(223, 158, 121, 103),
                spreadRadius: 4,
                blurRadius: 24)
          ],
          gradient:
              LinearGradient(colors: [Color(0xFF44BCFF), Color(0xFF26F384)]),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          showSelectedLabels: false, // <-- HERE
          showUnselectedLabels: false,
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.70),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home_rounded, size: iconSize),
            ),
            BottomNavigationBarItem(
              label: 'hotel',
              icon: Icon(Icons.hotel_rounded, size: iconSize),
            ),
            BottomNavigationBarItem(
              label: 'calendar',
              icon: Icon(Icons.today_rounded, size: iconSize),
            ),
            BottomNavigationBarItem(
              label: 'Blog',
              icon: Icon(Icons.forum_rounded, size: iconSize),
            ),
          ],
        ));
  }
}
