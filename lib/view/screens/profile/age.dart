import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oengoo/config/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/view/widgets/button_circle.dart';
import 'package:oengoo/view/widgets/custom_text.dart';
import 'package:numberpicker/numberpicker.dart';

import 'height.dart';

class UserAge extends StatefulWidget {
  const UserAge({Key? key}) : super(key: key);

  @override
  _UserAgeState createState() => _UserAgeState();
}

class _UserAgeState extends State<UserAge> {
  // List<int> ageList = List.generate(87, (index) => 14 + index);
  int selectedNum = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: 926.h,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 80.h),
        Padding(
          padding: EdgeInsets.only(left: 34.w),
          child: circleButton(onPress: () {}, iconData: Icons.arrow_back_ios),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: customText(text: 'How old are you?', fontSize: 35.sp),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            alignment: Alignment.center,
            child: NumberPicker(
              value: selectedNum,
              minValue: 14,
              maxValue: 100,
              selectedTextStyle: const TextStyle(
                  fontWeight: FontWeight.w600, color: AppColor.greenColor, fontSize: 30),
              textStyle: TextStyle(
                  fontWeight: FontWeight.w600, color: AppColor.lightGreyColor, fontSize: 20),
              decoration: const BoxDecoration(
                  border: Border(
                top: BorderSide(color: AppColor.greenColor),
                bottom: BorderSide(color: AppColor.greenColor),
              )),
              onChanged: (value) => setState(() => selectedNum = value),
            ),
          ),
        ),
        Expanded(
            child: Container(
          alignment: Alignment.topCenter,
          child: circleButton(onPress: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const UserHeight()));
          }),
        )),
      ]),
    ));
  }
}
