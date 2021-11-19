import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:oengoo/config/colors.dart';

numberPicker(int value,
    {required Function(int) onChanged, required int min, required int max, int state = 0}) {
  return NumberPicker(
    value: value,
    minValue: min,
    itemHeight: state == 0 ? 50.sp : 40.sp,
    maxValue: max,
    itemCount: state == 0 ? 3 : 5,
    textMapper: state == 1
        ? (val) {
            return val.toString() + "000";
          }
        : null,
    selectedTextStyle:
        TextStyle(fontWeight: FontWeight.w600, color: AppColor.greenColor, fontSize: 30.sp),
    textStyle:
        TextStyle(fontWeight: FontWeight.w600, color: AppColor.lightGreyColor, fontSize: 20.sp),
    decoration: const BoxDecoration(
        border: Border(
      top: BorderSide(color: AppColor.greenColor),
      bottom: BorderSide(color: AppColor.greenColor),
    )),
    onChanged: onChanged,
  );
}
