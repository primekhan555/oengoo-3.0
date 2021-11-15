import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:oengoo/config/image_paths.dart';
import 'package:oengoo/logins/verified.dart';
import 'package:oengoo/view/widgets/button_circle.dart';
import 'package:oengoo/view/widgets/custom_text.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 926.h,
          child: Column(
            children: [
              Container(
                height: 575.h,
                width: double.infinity,
                decoration: const BoxDecoration(gradient: AppColor.appThemeColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 60.h),
                    SizedBox(
                        height: 70.h, width: 258.w, child: Image.asset(ImagePaths.oengooWhite)),
                    SizedBox(
                      height: 48.h,
                    ),
                    customText(
                      text: 'Verify Your Phone Number',
                      fontSize: 28.sp,
                    ),
                    SizedBox(
                      height: 60.h,
                    ),
                    customText(
                      text: 'Verification Code has been sent to',
                      fontSize: 20.sp,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    customText(
                      text: '+92 3044540987',
                      fontSize: 20.sp,
                    ),
                    SizedBox(
                      height: 180.h,
                    ),
                    customText(
                      text: 'Please Enter Code Here',
                      fontSize: 20.sp,
                    ),
                    SizedBox(
                      height: 20.h,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 71.w, right: 71.w),
                  child: Column(
                    children: [
                      SizedBox(height: 30.h),
                      Expanded(
                        child: Container(
                          height: 60.h,
                          alignment: Alignment.topCenter,
                          child: PinCodeTextField(
                            onChanged: (String value) {},
                            length: 6,
                            appContext: context,
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(30),
                              fieldHeight: 60.h,
                              fieldWidth: 40.h,
                              inactiveColor: AppColor.greenColor,
                              selectedColor: AppColor.greenColor,
                              activeFillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          child: circleButton(
                              onPress: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (ctx) => const VerifiedScreen()));
                              },
                              color: AppColor.lightGreen)),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            customText(
                              text: "Didn't receive the code?",
                              fontSize: 14.sp,
                            ),
                            SizedBox(width: 10.w),
                            customText(
                              text: "RESEND",
                              fontColor: AppColor.greenColor,
                              fontSize: 14.sp,
                              decoration: TextDecoration.underline,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
