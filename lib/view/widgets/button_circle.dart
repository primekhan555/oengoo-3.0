import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';

circleButton(
    {Color color = AppColor.greenColor,
    required VoidCallback onPress,
    IconData iconData = Icons.arrow_forward_ios}) {
  return SizedBox(
    height: 64.h,
    width: 64.h,
    child: RawMaterialButton(
      onPressed: onPress,
      child: Icon(iconData, color: AppColor.whiteColor),
      shape: const CircleBorder(),
      fillColor: color,
    ),
  );
}
