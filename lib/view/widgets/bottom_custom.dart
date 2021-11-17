import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';

customButton({
  Color color = AppColor.greenColor,
  String? text,
  required VoidCallback onPress,
}) {
  return SizedBox(
    width: 164.h,
    height: 40.h,
    child: RawMaterialButton(
      onPressed: onPress,
      child: Text(text!),
      textStyle:
          TextStyle(color: AppColor.whiteColor, fontWeight: FontWeight.bold, fontSize: 20.sp),
      fillColor: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
    ),
  );
}
