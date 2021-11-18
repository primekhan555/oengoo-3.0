import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';

circleButton({
  Color color = AppColor.greenColor,
  VoidCallback? onPress,
  IconData iconData = Icons.arrow_forward_ios,
  iconColor = AppColor.whiteColor,
  int state = 0,
}) {
  return SizedBox(
    height: state == 0
        ? 64.h
        : state == 1
            ? 44.h
            : state == 2
                ? 55.h
                : 38.h,
    width: state == 0
        ? 64.h
        : state == 1
            ? 44.h
            : state == 2
                ? 55.h
                : 38.h,
    child: RawMaterialButton(
      onPressed: onPress,
      child: Icon(
        iconData,
        color: iconColor,
        size: state == 0
            ? 30.h
            : state == 1
                ? 25.h
                : state == 2
                    ? 30.h
                    : 20.h,
      ),
      shape: const CircleBorder(),
      fillColor: color,
    ),
  );
}
