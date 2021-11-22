import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';

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