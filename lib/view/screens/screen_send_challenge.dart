import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:oengoo/config/image_paths.dart';
import 'package:oengoo/config/sizes.dart';
import 'package:oengoo/view/widgets/appbar_custom.dart';
import 'package:oengoo/view/widgets/bottom_custom.dart';
import 'package:oengoo/view/widgets/button_negative.dart';
import 'package:oengoo/view/widgets/custom_text.dart';
import 'package:oengoo/view/widgets/widget_greenborder.dart';

class SendChallengeScreen extends StatefulWidget {
  const SendChallengeScreen({Key? key}) : super(key: key);

  @override
  _SendChallengeScreenState createState() => _SendChallengeScreenState();
}

class _SendChallengeScreenState extends State<SendChallengeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(onNotificationsClicked: null, onSettingClick: null),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 34.w),
          child: Column(children: [
            Sizes.h30,
            Row(
              children: [
                Container(
                  height: 102.h,
                  width: 102.h,
                  decoration: const BoxDecoration(
                    color: AppColor.greenColor,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(ImagePaths.maleImage, fit: BoxFit.contain),
                ),
                Sizes.w10,
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText(text: 'Saddam has send you', fontSize: 15.sp),
                    Sizes.h10,
                    customText(text: 'Steps Challenge', fontSize: 30.sp),
                  ],
                )
              ],
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Sizes.h40,
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 192.h,
                      width: 251.w,
                      margin: EdgeInsets.only(left: 40.w),
                      // color: Colors.yellow,
                      child: Image.asset(ImagePaths.sendChallengeImage),
                    ),
                  ),
                  Sizes.h30,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customText(text: 'Oengoo ID', fontSize: 20.sp),
                      customText(text: '0932823', fontSize: 20.sp, fontColor: AppColor.greenColor),
                    ],
                  ),
                  Sizes.h20,
                  horizontalGreenLine(),
                  Sizes.h20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customText(text: 'Steps', fontSize: 20.sp),
                      Row(
                        children: [
                          customText(text: '3000', fontSize: 20.sp, fontColor: AppColor.greenColor),
                          customText(
                              text: ' Steps', fontSize: 15.sp, fontColor: AppColor.greenColor),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  customText(
                      text: 'Complete this challenge within 24hrs and challenge back',
                      fontSize: 12.sp),
                  Sizes.h10,
                  customButton(
                    onPress: () {},
                    text: 'Accept',
                  ),
                  Sizes.h10,
                  negativeButton('Ignore', () {}),
                ],
              ),
            )
          ]),
        ));
  }
}
