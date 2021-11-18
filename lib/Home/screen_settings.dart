import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:oengoo/config/image_paths.dart';
import 'package:oengoo/view/widgets/appbar_custom.dart';
import 'package:oengoo/view/widgets/bottom_custom.dart';
import 'package:oengoo/view/widgets/custom_text.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(state: 2, onNotificationsClicked: null, onSettingClick: null),
      body: Column(
        children: [
          Container(
              height: 738.h,
              padding: EdgeInsets.only(left: 34.w, right: 34.w),
              child: ListView(
                children: [
                  SizedBox(height: 20.h),
                  customText(text: 'Account Settings', fontSize: 20.sp),
                  SizedBox(height: 20.h),
                  customText(text: 'Connect with Email', fontSize: 16.sp),
                  SizedBox(height: 10.h),
                  customText(text: 'Connect with Social accounts', fontSize: 16.sp),
                  SizedBox(height: 20.h),
                  horizontalGreenLine(),
                  SizedBox(height: 20.h),
                  customText(text: 'App Settings', fontSize: 20.sp),
                  SizedBox(height: 20.h),
                  rowItem('Unit Formt', 'Imperial'),
                  SizedBox(height: 10.h),
                  rowItem('Unit Formt', '1000 Steps'),
                  SizedBox(height: 10.h),
                  rowItem('Remainders', '9:00 AM'),
                  SizedBox(height: 20.h),
                  horizontalGreenLine(),
                  SizedBox(height: 20.h),
                  customText(text: 'Allow Text Messages', fontSize: 20.sp),
                  SizedBox(height: 10.h),
                  customText(text: 'Everyone', fontSize: 16.sp),
                  SizedBox(height: 10.h),
                  customText(text: 'Only people I follow', fontSize: 16.sp),
                  SizedBox(height: 10.h),
                  customText(text: 'Disable all private messages', fontSize: 16.sp),
                  SizedBox(height: 10.h),
                  customText(
                      text:
                          'If you disable private messages, other users will be unable\nto send you messages.',
                      fontSize: 12.sp,
                      fontColor: AppColor.lightGreyColor),
                  SizedBox(height: 20.h),
                  horizontalGreenLine(),
                  SizedBox(height: 20.h),
                  customText(text: 'Support & Feedback', fontSize: 20.sp),
                  SizedBox(height: 20.h),
                  customText(text: 'Rate Us', fontSize: 20.sp),
                  SizedBox(height: 20.h),
                  customText(text: 'Support & Feedback', fontSize: 20.sp),
                  SizedBox(height: 20.h),
                  horizontalGreenLine(),
                  SizedBox(height: 20.h),
                  customText(text: 'Privacy Policy', fontSize: 20.sp),
                  SizedBox(height: 20.h),
                  customText(text: 'Terms Of Use', fontSize: 20.sp),
                  SizedBox(height: 20.h),
                  horizontalGreenLine(),
                  SizedBox(height: 20.h),
                  Container(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 27.3,
                          width: 164,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColor.greenColor, width: 2.h),
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: customText(text: 'Delete Account', fontColor: Colors.green),
                        ),
                      )),
                  SizedBox(height: 20.h),
                  Container(
                      alignment: Alignment.center,
                      child: customButton(onPress: () {}, text: 'Logout')),
                  SizedBox(height: 20.h),
                ],
              )),
          bottomBanner(),
        ],
      ),
    );
  }

  rowItem(String title, String text, {int state = 0}) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            customText(text: title, fontSize: state == 0 ? 16.sp : 20.sp),
            const Spacer(),
            customText(text: text, fontSize: 12.sp, fontColor: AppColor.lightGreen),
            Container(
              height: 30.h,
              width: 30.h,
              child: IconButton(
                icon: Icon(Icons.arrow_downward, size: 20.h),
                onPressed: () {},
              ),
            )
          ],
        ),
        SizedBox(height: 10.h),
      ],
    );
  }

  bottomBanner() {
    return Container(
      alignment: Alignment.center,
      height: 60.h,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: AppColor.appThemeColor,
        color: Colors.yellow,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 111.w,
            height: 30.h,
            child: Image.asset(ImagePaths.oengooWhite),
          ),
          Text(
            "Version: 3.2.1",
            style: textStyle("nunito", 12.sp, Colors.black45),
          ),
        ],
      ),
    );
  }
}