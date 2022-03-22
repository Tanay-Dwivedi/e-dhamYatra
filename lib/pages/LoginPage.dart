import 'package:e_chardham_yatra/pages/VerificationPage.dart';
import 'package:e_chardham_yatra/values/colors.dart';
import 'package:e_chardham_yatra/main.dart';
import 'package:e_chardham_yatra/widget/title.dart';
import 'package:e_chardham_yatra/widget/rounded_input_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final double totalHeight = MediaQuery.of(context).size.height;
    final double totalWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Padding(
                padding: EdgeInsets.only(top: totalHeight * 0.6),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      heading("Know Uttarakhand in"),
                      heading("one simple step."),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(children: [
                        RoundedInputFeild(
                          leftPadding: totalWidth * 0.07,
                          rightPadding: 0,
                          keyboardType: TextInputType.number,
                          width: totalWidth * 0.7,
                          hintText: "Your Phone No.",
                          icon: Icons.phone_rounded,
                          action: TextInputAction.next,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(10),
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          ],
                        ),
                        MaterialButton(
                            height: 50,
                            padding: const EdgeInsets.all(0),
                            child: const Icon(Icons.arrow_forward_rounded),
                            shape: const CircleBorder(),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const VerificationPage()));
                            },
                            color: AppColor.primary)
                      ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: totalWidth * 0.3,
                                child: const Divider()),
                            const Text("OR"),
                            SizedBox(
                                width: totalWidth * 0.3,
                                child: const Divider()),
                          ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MaterialButton(
                              height: 50,
                              padding: const EdgeInsets.all(0),
                              child: const Icon(FontAwesomeIcons.google),
                              shape: const CircleBorder(),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MainContent()));
                              },
                              color: AppColor.primary),
                          MaterialButton(
                              height: 50,
                              padding: const EdgeInsets.all(0),
                              child: const Icon(FontAwesomeIcons.facebook),
                              shape: const CircleBorder(),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MainContent()));
                              },
                              color: AppColor.primary)
                        ],
                      )
                    ]))));
  }
}
