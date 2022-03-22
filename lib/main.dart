import 'package:e_chardham_yatra/pages/SplashScreen.dart';
import 'package:e_chardham_yatra/pages/onboarding_page.dart';
import 'package:e_chardham_yatra/values/colors.dart';
import 'package:e_chardham_yatra/pages/AccomodationPage.dart';
import 'package:e_chardham_yatra/pages/BlogPage.dart';
import 'package:e_chardham_yatra/pages/CalendarPage.dart';
import 'package:e_chardham_yatra/pages/HomePage.dart';
import 'package:e_chardham_yatra/pages/LoginPage.dart';
import 'package:e_chardham_yatra/values/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: AppColor.primary,
            backgroundColor: AppColor.background,
            scaffoldBackgroundColor: AppColor.background,
            fontFamily: 'Poppins'),
        title: 'Utrakhand Tourism',
        home: const Material(child: HomePage()));
  }
}

class MainContent extends StatefulWidget {
  const MainContent({Key? key}) : super(key: key);
  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
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
          Align(alignment: Alignment.bottomCenter, child: bottomNav(width))
        ],
      );
    }));
  }

  Widget bottomNav(width) {
    return SizedBox(
        width: width,
        child: SnakeNavigationBar.color(
          behaviour: SnakeBarBehaviour.floating,
          snakeShape: SnakeShape.circle,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppDimens.cornerRadius)),
          padding: const EdgeInsets.only(bottom: 12, left: 50, right: 50),

          ///configuration for SnakeNavigationBar.color
          snakeViewColor: AppColor.bottomBar,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.blueGrey.withOpacity(.7),
          backgroundColor: Colors.white.withOpacity(.95),

          showUnselectedLabels: false,
          showSelectedLabels: false,

          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.hotel_rounded), label: 'Accommodation'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_rounded), label: 'Calendar'),
            BottomNavigationBarItem(
                icon: Icon(Icons.forum_rounded), label: 'Blog'),
          ],
        ));
  }
}
