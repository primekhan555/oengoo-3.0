import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/view/widgets/custom_text.dart';

negativeButton(String text, VoidCallback onTap) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 27.3.h,
      width: 164.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.greenColor, width: 2.h),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: customText(text: text, fontColor: Colors.green),
    ),
  );
}
