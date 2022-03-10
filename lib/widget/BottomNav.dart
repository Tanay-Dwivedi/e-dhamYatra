import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNav();
}

class _BottomNav extends State<BottomNav> {
  static const double iconSize = 35;
  @override
  Widget build(BuildContext context) {
    return Container(
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
            onTap: (value) {
              // Respond to item press.
            },
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
                icon: Icon(Icons.calendar_month_rounded, size: iconSize),
              ),
              const BottomNavigationBarItem(
                label: 'chat',
                icon: Icon(Icons.forum_rounded, size: iconSize),
              ),
            ],
          )),
    );
  }
}
