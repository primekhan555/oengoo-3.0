import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/Home/notification.dart';
import 'package:oengoo/Home/profile.dart';

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
              Navigator.push(context, MaterialPageRoute(builder: (context) => Notifications()));
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

Widget mainContainers(String imageUrl, String text1, String text2, String text3) {
  return Container(
    height: 110.h,
    width: 65.w,
    decoration: BoxDecoration(
        border: Border.all(color: AppColor.greenColor, width: 2.w),
        borderRadius: BorderRadius.circular(35)),
    child: Column(
      children: [
        Image.asset(
          imageUrl,
          height: 45.h,
        ),
        Text(text1, style: textStyle("nunito", 12.sp, AppColor.blackColor)),
        Text(
          text2,
          style: textStyle("nunito", 12.sp, AppColor.greenColor),
        ),
        Text(text3, style: textStyle("nunito", 8.sp, Colors.grey[300]))
      ],
    ),
  );
}

Widget challengContainers(String text1, String text2, String imageurl1, String imageurl2) {
  return Container(
    height: 190.h,
    width: 90.w,
    decoration: BoxDecoration(
        border: Border.all(color: AppColor.greenColor, width: 2.w),
        borderRadius: BorderRadius.circular(28)),
    child: Column(
      children: [
        Container(
            height: 55.h,
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColor.greenColor,
                borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text1,
                  style: textStyle("nunito", 12.sp, Colors.white),
                ),
                Text(text2, style: textStyle("nunito", 12.sp, Colors.white))
              ],
            )),
        SizedBox(
          height: 3.h,
        ),
        Container(
          height: 10.h,
          width: 80.w,
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(5), color: AppColor.greenColor),
        ),
        SizedBox(
          height: 3.h,
        ),
        Image.asset(
          imageurl1,
          height: 37.h,
        ),
        SizedBox(
          height: 3.h,
        ),
        Image.asset(
          imageurl2,
          height: 60.h,
        )
      ],
    ),
  );
}

Widget horizontalGreenLine() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 30.w),
    height: 1.h,
    color: AppColor.greenColor,
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
