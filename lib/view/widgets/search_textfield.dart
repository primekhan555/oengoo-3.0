import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/config/decorations.dart';

searchTextField() {
  return Container(
    height: 40.h,
    width: double.infinity,
    decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(30),
        boxShadow: Decorations.shadowButton,
        border: Border.all(color: AppColor.greenColor, width: 2.h)),
    child: TextField(
      decoration: InputDecoration(
        suffixIcon: Icon(
          CupertinoIcons.search,
          color: AppColor.greenColor,
          size: 30.h,
        ),
        hintText: "Search",
        contentPadding: EdgeInsets.only(
          left: 10.w,
          bottom: 22.h,
        ),
        hintStyle: TextStyle(color: AppColor.lightGreyColor, fontSize: 16.sp),
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
    ),
  );
}
