import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/Globals/globalwidgets.dart';

class SendChallengeInSteps extends StatefulWidget {
  const SendChallengeInSteps({Key? key}) : super(key: key);

  @override
  _SendChallengeInStepsState createState() => _SendChallengeInStepsState();
}

class _SendChallengeInStepsState extends State<SendChallengeInSteps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: Container(
      height: double.infinity,
      width: 310.w,
      child: Column(children: [
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            Container(
              height: 35.h,
              width: 35.w,
              child: Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Icon(Icons.arrow_back_ios, color: Colors.white),
              ),
              decoration: BoxDecoration(color: AppColor.greenColor, shape: BoxShape.circle),
            ),
          ],
        ),
        SizedBox(
          height: 40.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 90.h,
              width: 90.w,
              child: Image.asset(
                "assets/images/otheruserprofilepic.png",
                fit: BoxFit.fill,
              ),
              decoration: BoxDecoration(shape: BoxShape.circle),
            ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Send Tahseen Ullah daily",
                  style: textStyle("nunito", 12.sp, AppColor.blackColor),
                ),
                Text(
                  "Steps Challenge",
                  style: textStyle("nunito", 20.sp, AppColor.blackColor),
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Image.asset(
                "assets/images/sendchallenge.png",
                height: 120.h,
              ),
            ),
          ],
        ),
        SizedBox(height: 30.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Oengoo ID",
              style: textStyle("nunitio", 15.sp, AppColor.blackColor),
            ),
            Text(
              "09321",
              style: textStyle("nunitio", 15.sp, AppColor.greenColor),
            )
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Container(
          height: 1.h,
          width: 285,
          color: AppColor.greenColor,
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Steps",
              style: textStyle("nunitio", 15.sp, AppColor.blackColor),
            ),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
            height: 130.h,
            width: 150.w,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 120.h,
                      width: 80.w,
                      child: CupertinoPicker(
                        backgroundColor: Colors.transparent,
                        magnification: 1.2,
                        useMagnifier: true,
                        itemExtent: 60,
                        onSelectedItemChanged: (val) {},
                        children: [
                          Center(
                            child: Text(
                              "1000",
                              style: textStyle("nunito", 22.sp, AppColor.greenColor),
                            ),
                          ),
                          Center(
                            child: Text(
                              "2000",
                              style: textStyle("nunito", 22.sp, AppColor.greenColor),
                            ),
                          ),
                          Center(
                            child: Text(
                              "3000",
                              style: textStyle("nunito", 22.sp, AppColor.greenColor),
                            ),
                          ),
                          Center(
                            child: Text(
                              "4000",
                              style: textStyle("nunito", 22.sp, AppColor.greenColor),
                            ),
                          ),
                          Center(
                            child: Text(
                              "5000",
                              style: textStyle("nunito", 22.sp, AppColor.greenColor),
                            ),
                          ),
                          Center(
                            child: Text(
                              "6000",
                              style: textStyle("nunito", 22.sp, AppColor.greenColor),
                            ),
                          ),
                          Center(
                            child: Text(
                              "7000",
                              style: textStyle("nunito", 22.sp, AppColor.greenColor),
                            ),
                          ),
                          Center(
                            child: Text(
                              "8000",
                              style: textStyle("nunito", 22.sp, AppColor.greenColor),
                            ),
                          ),
                          Center(
                            child: Text(
                              "9000",
                              style: textStyle("nunito", 22.sp, AppColor.greenColor),
                            ),
                          ),
                          Center(
                            child: Text(
                              "10000",
                              style: textStyle("nunito", 22.sp, AppColor.greenColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
        Container(
          height: 30.h,
          width: 140.w,
          decoration:
              BoxDecoration(color: AppColor.greenColor, borderRadius: BorderRadius.circular(25)),
          child: Center(
            child: Text(
              "Challenge",
              style: textStyle("nunito", 16.sp, Colors.white),
            ),
          ),
        )
      ]),
    ))));
  }
}
