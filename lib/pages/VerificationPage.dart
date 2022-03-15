import 'package:e_chardham_yatra/main.dart';
import 'package:e_chardham_yatra/pages/EnterDetailPage.dart';
import 'package:e_chardham_yatra/values/colors.dart';
import 'package:e_chardham_yatra/values/dimens.dart';
import 'package:e_chardham_yatra/widget/title.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPage();
}

class _VerificationPage extends State<VerificationPage> {
  OtpFieldController otpController = OtpFieldController();
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
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      heading("Verify your phone number"),
                      const SizedBox(
                        height: 40,
                      ),
                      OTPTextField(
                        onChanged: (pin) {},
                        onCompleted: (pin) {},
                        length: 6,
                        width: totalWidth,
                        fieldWidth: totalWidth * 0.11,
                        style: const TextStyle(fontSize: 14),
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldStyle: FieldStyle.box,
                      ),
                      SizedBox(height: totalHeight * 0.1),
                      MaterialButton(
                          height: 50,
                          padding: const EdgeInsets.only(left: 50, right: 50),
                          child: const Text("Verify",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  AppDimens.cornerRadius)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const EnterDetailPage()));
                          },
                          color: AppColor.primary)
                    ]))));
  }
}
