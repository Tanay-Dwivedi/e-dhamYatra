import 'package:e_chardham_yatra/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Input Field Widget

class RoundedInputFeild extends StatelessWidget {
  final double width;
  final TextInputAction? action;
  final String hintText;
  final IconData icon;
  const RoundedInputFeild(
      {Key? key,
      required this.width,
      required this.hintText,
      required this.icon,
      required this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        margin: EdgeInsets.only(left: width * 0.1, bottom: 20, top: 20),
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(5.0, 5.0),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          )
        ], color: AppColor.background, borderRadius: BorderRadius.circular(14)),
        child: TextField(
            keyboardType: TextInputType.phone,
            inputFormatters: [
              LengthLimitingTextInputFormatter(10),
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
            ],
            textInputAction: action,
            decoration: InputDecoration(
              icon: Icon(
                icon,
                color: Colors.black,
              ),
              border: InputBorder.none,
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
