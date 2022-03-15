import 'package:e_chardham_yatra/values/colors.dart';
import 'package:e_chardham_yatra/main.dart';
import 'package:e_chardham_yatra/widget/widgets.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final double totalHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Padding(
                padding: EdgeInsets.only(top: totalHeight * 0.6),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const RoundedInputFeild(
                        hintText: "Your Phone No.",
                        icon: Icons.phone_rounded,
                        action: TextInputAction.next,
                      ),
                      MaterialButton(
                        shape: const CircleBorder(),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BottomNav()));
                        },
                        color: AppColor.primary,
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.arrow_right))
                    ]))));
  }
}
