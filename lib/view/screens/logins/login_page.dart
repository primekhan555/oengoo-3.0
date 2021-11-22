import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/config/image_paths.dart';
import 'package:oengoo/view/widgets/button_circle.dart';
import 'package:oengoo/view/widgets/custom_text.dart';

import 'otpscreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 926.h,
          child: Column(
            children: [
              Container(
                height: 586.h,
                padding: EdgeInsets.only(left: 34.w, right: 34.w),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 60.h),
                      customText(text: 'Welcome to', fontSize: 30.sp),
                      Image.asset(
                        ImagePaths.oengooGreen,
                        height: 67.h,
                        width: 243.w,
                        fit: BoxFit.cover,
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 51.63.h,
                          width: 359.61.w,
                          alignment: Alignment.center,
                          child: TextFormField(
                            decoration: InputDecoration(
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              contentPadding: const EdgeInsets.only(left: 30, top: 12, right: 30),
                              hintText: "Enter your number",
                              prefixText: '+92 | ',
                              label: const Text(
                                'Enter your number',
                                style: TextStyle(color: AppColor.greenColor),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.r),
                                  borderSide: const BorderSide(color: AppColor.greenColor)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.r),
                                  borderSide: const BorderSide(color: AppColor.greenColor)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.topCenter,
                          child: circleButton(onPress: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (ctx) => const OtpScreen()));
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(gradient: AppColor.appThemeColor),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 1.h,
                                    width: 80.h,
                                    color: AppColor.blackColor,
                                  ),
                                  Text(
                                    '  Or via social media  ',
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'nunito'),
                                  ),
                                  Container(
                                    height: 1.h,
                                    width: 80.h,
                                    color: AppColor.blackColor,
                                  )
                                ],
                              )),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Container(
                              height: 48.h,
                              width: 317.83.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(color: AppColor.blackColor, width: 1.w)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.transparent,
                                    child: Image.asset(
                                      ImagePaths.googleImage,
                                      height: 50.h,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  customText(text: 'Sign in with Google', fontSize: 15.sp),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 48.h,
                              width: 317.83.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(color: AppColor.blackColor, width: 1.w)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.transparent,
                                    child: Image.asset(
                                      ImagePaths.appleImage,
                                      height: 50.h,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  customText(text: 'Sign in with Apple', fontSize: 15.sp)
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              customText(text: 'By Signing Up, you agree to our', fontSize: 11.sp),
                              SizedBox(
                                width: 5.w,
                              ),
                              customText(
                                  text: 'Terms of Use',
                                  fontSize: 11.sp,
                                  fontColor: AppColor.greenColor),
                            ],
                          ),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
