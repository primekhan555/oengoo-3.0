import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:oengoo/config/colors.dart';

numberPicker(int value, {required Function(int) onChanged, required int min, required int max}) {
  return NumberPicker(
    value: value,
    minValue: min,
    maxValue: max,
    selectedTextStyle:
        const TextStyle(fontWeight: FontWeight.w600, color: AppColor.greenColor, fontSize: 30),
    textStyle: TextStyle(fontWeight: FontWeight.w600, color: AppColor.lightGreyColor, fontSize: 20),
    decoration: const BoxDecoration(
        border: Border(
      top: BorderSide(color: AppColor.greenColor),
      bottom: BorderSide(color: AppColor.greenColor),
    )),
    onChanged: onChanged,
  );
}
