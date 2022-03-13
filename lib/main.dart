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
    double width = 300;
    return Scaffold(body: OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.landscape) {
        width = 300;
      } else {
        width = double.infinity;
      }

      return Stack(
        children: [
          _pages.elementAt(_selectedIndex),
          Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                  child: newMethod(width),
                  data: Theme.of(context)
                      .copyWith(canvasColor: Colors.transparent)))
        ],
      );
    }));
  }

  Container newMethod(width) {
    return Container(
        width: width,
        margin: const EdgeInsets.only(bottom: 20, left: 30, right: 30),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: const Offset(4, 4),
                color: Colors.black.withOpacity(.4),
                spreadRadius: 1,
                blurRadius: 10)
          ],
          color: Colors.white.withOpacity(.93),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false, // <-- HERE
          showUnselectedLabels: false,
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey.withOpacity(.70),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.abc, size: iconSize),
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
