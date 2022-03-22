import 'package:e_chardham_yatra/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RoundedInputFeild extends StatelessWidget {
  final double width;
  final TextInputAction? action;
  final String hintText;
  final IconData icon;
  final TextInputType keyboardType;
  final List<TextInputFormatter> inputFormatters;
  final double leftPadding;
  final double rightPadding;
  const RoundedInputFeild(
      {Key? key,
      required this.leftPadding,
      required this.rightPadding,
      required this.width,
      required this.hintText,
      required this.icon,
      required this.action,
      required this.keyboardType,
      required this.inputFormatters})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        margin: EdgeInsets.only(
            bottom: 20, top: 20, left: leftPadding, right: rightPadding),
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
            keyboardType: keyboardType,
            inputFormatters: inputFormatters,
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
