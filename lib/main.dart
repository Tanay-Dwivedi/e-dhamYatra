import 'package:e_chardham_yatra/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'widget/BottomNav.dart';

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
      home: Scaffold(
        bottomNavigationBar: BottomNav(),
        body: HomePage(),
      ),
    );
  }
}
