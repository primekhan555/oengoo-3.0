import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';

customTextField({String? hintText, String? label}) {
  return Container(
    height: 51.63.h,
    width: double.infinity,
    alignment: Alignment.center,
    child: TextFormField(
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.only(left: 30.w, top: 12.h, right: 30.w),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 16.sp),
        label: Text(
          label!,
          style:
              TextStyle(color: AppColor.blackColor, fontWeight: FontWeight.bold, fontSize: 16.sp),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: const BorderSide(color: AppColor.greenColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: const BorderSide(color: AppColor.greenColor)),
      ),
    ),
  );
}
