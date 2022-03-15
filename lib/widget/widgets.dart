import 'package:e_chardham_yatra/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Input Field Widget

class RoundedInputFeild extends StatelessWidget {
  final action;
  final String hintText;
  final IconData icon;
  const RoundedInputFeild(
      {Key? key,
      required this.hintText,
      required this.icon,
      required this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(14)),
        child: TextField(
            keyboardType: TextInputType.phone,
            inputFormatters: [
              LengthLimitingTextInputFormatter(10),
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
            ],
            textInputAction: action,
            decoration: InputDecoration(
              icon: Icon(icon),
              border: InputBorder.none,
              iconColor: Colors.black,
              hintText: hintText,
            )));
  }
}

// Explore tiles widget

Widget exploreTiles(String title, IconData icon) {
  return Expanded(
      child: Column(
    children: [
      // TODO: Icon to be added here
      MaterialButton(
        color: AppColor.primary,
        padding: const EdgeInsets.all(16),
        shape: const CircleBorder(),
        onPressed: () {},
        child: Icon(
          icon,
          color: Colors.black,
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
