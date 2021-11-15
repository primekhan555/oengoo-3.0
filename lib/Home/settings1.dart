import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/Globals/globalwidgets.dart';

class SettingsOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Column(
                    children: [
                      SizedBox(height: 15.h),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            backButton(context, () {
                              Navigator.pop(context);
                            }),
                            settingsIcon(
                              () {
                                // print("Button Clicked");
                                // Navigator.push(
                                //     context,
                                //     (MaterialPageRoute(
                                //         builder: (context) => SettingsTwo())));
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 13.h,
                      ),
                      Expanded(
                        child: Container(
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              Text(
                                "Account Settings",
                                style: textStyle("nunito", 18.sp, AppColor.blackColor),
                              ),
                              Text(
                                "Connect with Email",
                                style: textStyle("nunito", 14.sp, AppColor.blackColor),
                              ),
                              Text(
                                "Connect with Social accounts",
                                style: textStyle("nunito", 14.sp, AppColor.blackColor),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              horizontalGreenLine(),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "App Settings",
                                style: textStyle("nunito", 18.sp, AppColor.blackColor),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Unit Format",
                                    style: textStyle("nunito", 14.sp, AppColor.blackColor),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Imperial",
                                        style: textStyle("nunito", 14.sp, AppColor.greenColor),
                                      ),
                                      Icon(Icons.keyboard_arrow_down),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Step Goals",
                                    style: textStyle("nunito", 14.sp, AppColor.blackColor),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "1000 steps",
                                        style: textStyle("nunito", 14.sp, AppColor.greenColor),
                                      ),
                                      Icon(Icons.keyboard_arrow_down),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Reminders",
                                    style: textStyle("nunito", 14.sp, AppColor.blackColor),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "09:00 am",
                                        style: textStyle("nunito", 14.sp, AppColor.greenColor),
                                      ),
                                      Icon(Icons.keyboard_arrow_down),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              horizontalGreenLine(),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Allow Private Messages",
                                style: textStyle("nunito", 18.sp, AppColor.blackColor),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Text(
                                "Everyone",
                                style: textStyle("nunito", 14.sp, AppColor.blackColor),
                              ),
                              Text(
                                "Only people I follow",
                                style: textStyle("nunito", 14.sp, AppColor.blackColor),
                              ),
                              Text(
                                "Disable all private messages",
                                style: textStyle("nunito", 14.sp, AppColor.blackColor),
                              ),
                              Text(
                                "If you disable private messages, other users will be unable to send you messages.",
                                style: textStyle("nunito", 11.sp, Colors.grey),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              horizontalGreenLine(),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Support & Feedback",
                                style: textStyle("nunito", 18.sp, AppColor.blackColor),
                              ),
                              Text(
                                "Rate us",
                                style: textStyle("nunito", 18.sp, AppColor.blackColor),
                              ),
                              Text(
                                "Share Oengoo",
                                style: textStyle("nunito", 18.sp, AppColor.blackColor),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              horizontalGreenLine(),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Privacy Policy",
                                style: textStyle("nunito", 18.sp, AppColor.blackColor),
                              ),
                              Text(
                                "Terms of use",
                                style: textStyle("nunito", 18.sp, AppColor.blackColor),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              horizontalGreenLine(),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                  width: 170.w,
                                  height: 40.h,
                                  // color: Colors.pink,
                                  child: Image.asset("assets/images/deleteAccountBtn.png")),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                  width: 170.w,
                                  height: 40.h,
                                  // color: Colors.pink,
                                  child: Image.asset("assets/images/logoutBtn.png")),
                              SizedBox(
                                height: 10.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              bottomBanner(),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomBanner() {
    return Container(
      alignment: Alignment.center,
      height: 60.h,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/gradiantBackground.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 111.w,
            height: 30.h,
            child: Image.asset("assets/images/oengoologowhite.png"),
          ),
          Text(
            "Version: 3.2.1",
            style: textStyle("nunito", 12.sp, AppColor.greenColor),
          ),
        ],
      ),
    );
  }
}
