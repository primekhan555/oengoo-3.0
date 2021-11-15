import 'package:flutter/material.dart';
import 'package:oengoo/config/colors.dart';

Widget customText(
    {String text = '',
    double height = 1,
    textAlign,
    maxLines = 15,
    fontWeight = FontWeight.normal,
    double fontSize = 16.0,
    overflow = TextOverflow.ellipsis,
    Color fontColor = AppColor.blackColor,
    TextDecoration decoration = TextDecoration.none}) {
  return Text(
    text,
    maxLines: maxLines,
    textAlign: textAlign,
    style: TextStyle(
        height: height,
        fontFamily: 'nunito',
        fontSize: fontSize,
        color: fontColor,
        fontWeight: fontWeight,
        decoration: decoration),
    overflow: overflow,
  );
}
