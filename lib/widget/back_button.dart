import 'dart:ui';

import 'package:e_chardham_yatra/values/dimens.dart';
import 'package:flutter/material.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 18,
            left: 18,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppDimens.cornerRadius),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                child: const SizedBox(
                  height: 45,
                  width: 45,
                ),
              ),
            )),
        Container(
            height: 45,
            width: 45,
            padding: const EdgeInsets.only(left: 5),
            margin: const EdgeInsets.all(18),
            decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(AppDimens.cornerRadius)),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 12,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ))
      ],
    );
  }
}
