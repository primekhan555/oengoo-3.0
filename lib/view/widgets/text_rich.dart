import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';

richText({required String text1, required String text2, required String text3}) {
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      text: text1,
      style: TextStyle(
        fontSize: 10.sp,
        color: AppColor.blackOColor,
        fontWeight: FontWeight.bold,
      ),
      children: [
        TextSpan(text: text2, style: const TextStyle(color: AppColor.greenColor)),
        TextSpan(text: text3),
      ],
    ),
  );
}
