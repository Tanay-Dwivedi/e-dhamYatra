import 'package:flutter/material.dart';

class button_widget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;
  const button_widget({Key? key, required this.text, required this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onClicked, child: Text(text));
  }
}
