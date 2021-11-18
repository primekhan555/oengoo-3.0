import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:oengoo/config/colors.dart';

flutterSwitch(bool isCm, Function(bool) onToggle, {int state = 0}) {
  return FlutterSwitch(
    inactiveColor: Colors.grey.shade300,
    activeColor: Colors.grey.shade300,
    width: state == 0 ? 059.w : 36.w,
    height: state == 0 ? 31.h : 18.h,
    toggleSize: state == 0 ? 31.h : 18.h,
    value: isCm,
    borderRadius: 30.0,
    padding: 1,
    toggleColor: AppColor.greenColor,
    switchBorder: Border.all(
      color: AppColor.greenColor,
      width: 0.5,
    ),
    onToggle: onToggle,
  );
}
