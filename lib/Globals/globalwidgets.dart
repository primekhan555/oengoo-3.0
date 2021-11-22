import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/view/screens/screen_notification.dart';
import 'package:oengoo/view/screens/screen_profile.dart';
import 'package:oengoo/config/decorations.dart';
import 'package:oengoo/view/widgets/custom_text.dart';
import 'package:oengoo/view/widgets/text_rich.dart';

import '../config/colors.dart';

TextStyle textStyle(String? fontfamily, double fontsize, Color? color) {
  return TextStyle(fontFamily: fontfamily, fontSize: fontsize, color: color);
}

Widget textfield(String? hinttext, String? textfieldname) {
  return Container(
    height: 48.h,
    width: 300.w,
    child: Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(top: 10),
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 40, top: 12),
              hintText: hinttext,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: AppColor.greenColor)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: AppColor.greenColor)),
            ),
          ),
        ),
        Positioned(
          bottom: 40,
          left: 30,
          child: Container(
            height: 15.h,
            width: 76.w,
            color: Colors.white,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  textfieldname!,
                  style: textStyle("nunito", 10.sp, AppColor.blackColor),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget appbar(BuildContext context) {
  return Container(
    height: 60.h,
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => UserProfile()));
            },
            child: Container(
                height: 45.h,
                width: 45.h,
                decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, top: 2),
                  child: Image.asset(
                    "assets/images/male.png",
                    fit: BoxFit.fill,
                  ),
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 17, bottom: 3),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => NotificationScreen()));
            },
            child: Container(
              height: 35.h,
              width: 35.w,
              child: Center(
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(color: AppColor.greenColor, shape: BoxShape.circle),
            ),
          ),
        )
      ],
    ),
  );
}

Widget challengeContainers(
  String text,
  String imageUrl, {
  required String richText1,
  required String richText2,
  required String richText3,
}) {
  return Container(
    height: 199.h,
    width: 97.w,
    decoration: BoxDecoration(
      color: AppColor.whiteColor,
      border: Border.all(color: AppColor.greenColor, width: 2.w),
      borderRadius: BorderRadius.circular(30.r),
      boxShadow: Decorations.shadow,
    ),
    child: Column(
      children: [
        Container(
            height: 59.h,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: AppColor.greenColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r))),
            child: customText(
              text: text,
              fontSize: 16.sp,
              textAlign: TextAlign.center,
              fontColor: CupertinoColors.white,
            )),
        SizedBox(
          height: 6.h,
        ),
        Container(
          height: 5.h,
          width: 83.w,
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(10.r), color: AppColor.greenColor),
        ),
        SizedBox(
          height: 6.h,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.w,
            right: 10.w,
          ),
          child: richText(text1: richText1, text2: richText2, text3: richText3),
        ),
        SizedBox(
          height: 3.h,
        ),
        Image.asset(
          imageUrl,
          height: 80.h,
        )
      ],
    ),
  );
}

Widget horizontalGreenLine() {
  return Container(
    alignment: Alignment.center,
    child: Container(
      height: 1.h,
      width: 270.w,
      color: AppColor.greenColor,
    ),
  );
}

Widget backButton(context, ontap) {
  return InkWell(
    onTap: () {
      ontap();
      // Navigator.pop(context);
    },
    child: Container(
      height: 35.h,
      width: 35.w,
      child: Padding(
        padding: const EdgeInsets.only(left: 6),
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 20.r,
        ),
      ),
      decoration: BoxDecoration(color: AppColor.greenColor, shape: BoxShape.circle),
    ),
  );
}

Widget routineContainer(String imageUrl, String text1, String text2, String text3) {
  return Container(
    height: 128.h,
    width: 71.w,
    decoration: BoxDecoration(
      color: AppColor.whiteColor,
      border: Border.all(color: AppColor.greenColor, width: 2.w),
      borderRadius: BorderRadius.circular(35),
      boxShadow: Decorations.shadow,
    ),
    child: Column(
      children: [
        Image.asset(
          imageUrl,
          height: 50.h,
        ),
        customText(text: text1, fontSize: 16.sp, fontColor: AppColor.blackOColor),
        SizedBox(height: 8.h),
        customText(text: text2, fontSize: 15.sp, fontColor: AppColor.greenColor),
        SizedBox(height: 8.h),
        customText(text: text3, fontSize: 10.sp, fontColor: AppColor.lightGreyColor),
      ],
    ),
  );
}

Widget profileButton(VoidCallback ontap) {
  return InkWell(
    onTap: () {
      ontap();
      // Navigator.pop(context);
    },
    child: Container(
      height: 40.h,
      width: 40.w,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/male.png")),
          color: AppColor.greenColor,
          shape: BoxShape.circle),
    ),
  );
}

Widget settingsIcon(VoidCallback ontap) {
  return InkWell(
    onTap: () {
      ontap();
    },
    child: Container(
      alignment: Alignment.center,
      height: 35.h,
      width: 35.w,
      child: Icon(
        Icons.settings_input_component,
        color: Colors.white,
        size: 20.r,
      ),
      decoration: BoxDecoration(color: AppColor.blackColor, shape: BoxShape.circle),
    ),
  );
}

Widget notificationIconButton(VoidCallback ontap) {
  return InkWell(
    onTap: () {
      ontap();
    },
    child: Container(
      alignment: Alignment.center,
      height: 35.h,
      width: 35.w,
      child: Icon(
        Icons.notifications,
        color: Colors.white,
        size: 20.r,
      ),
      decoration: BoxDecoration(color: AppColor.blackColor, shape: BoxShape.circle),
    ),
  );
}
