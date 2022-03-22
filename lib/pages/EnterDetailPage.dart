import 'package:e_chardham_yatra/main.dart';
import 'package:e_chardham_yatra/values/colors.dart';
import 'package:e_chardham_yatra/values/dimens.dart';
import 'package:e_chardham_yatra/widget/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widget/rounded_input_feild.dart';

class EnterDetailPage extends StatefulWidget {
  const EnterDetailPage({Key? key}) : super(key: key);

  @override
  State<EnterDetailPage> createState() => _EnterDetailPage();
}

class _EnterDetailPage extends State<EnterDetailPage> {
  @override
  Widget build(BuildContext context) {
    final double totalHeight = MediaQuery.of(context).size.height;
    final double totalWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Padding(
                padding: EdgeInsets.only(top: totalHeight * 0.3),
                child: Center(
                    child: Column(children: [
                  heading("Tell us about yourself"),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(height: totalHeight * 0.1),
                  RoundedInputFeild(
                    leftPadding: 0,
                    rightPadding: 0,
                    keyboardType: TextInputType.text,
                    width: totalWidth * 0.8,
                    hintText: "Your name",
                    icon: Icons.person,
                    action: TextInputAction.next,
                    inputFormatters: [],
                  ),
                  RoundedInputFeild(
                    leftPadding: 0,
                    rightPadding: 0,
                    keyboardType: TextInputType.datetime,
                    width: totalWidth * 0.8,
                    hintText: "Your age",
                    icon: Icons.calendar_month_rounded,
                    action: TextInputAction.next,
                    inputFormatters: [],
                  ),
                  MaterialButton(
                      height: 50,
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: const Text("Done",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(AppDimens.cornerRadius)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainContent()));
                      },
                      color: AppColor.primary)
                ])))));
  }
}
