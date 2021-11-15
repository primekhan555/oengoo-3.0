import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:oengoo/config/colors.dart';

flutterSwitch(bool isCm, Function(bool) onToggle) {
  return FlutterSwitch(
    inactiveColor: Colors.grey.shade300,
    activeColor: Colors.grey.shade300,
    width: 59.w,
    height: 31.h,
    toggleSize: 31.h,
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
