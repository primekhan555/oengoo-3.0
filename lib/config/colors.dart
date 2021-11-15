import 'package:flutter/cupertino.dart';

import 'dart:ui' show Color;

import 'package:flutter/material.dart';

class AppColor {
  AppColor._();
  static const Color blackColor = Color(0xff303030);
  static const Color greenColor = Color(0xff75B67C);
  static const Color lightGreen = Color(0xff75B67C);
  static const Color whiteColor = Colors.white;
  static Color lightGreyColor = Colors.grey.shade400;
  static const Gradient appThemeColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomRight,
    colors: [Color(0xff75B67C), Color(0xffFFFFFF)],
  );
}
