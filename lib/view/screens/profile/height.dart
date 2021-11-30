import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:oengoo/view/screens/profile/weight.dart';
import 'package:oengoo/view/widgets/button_circle.dart';
import 'package:oengoo/view/widgets/custom_text.dart';
import 'package:oengoo/view/widgets/widget_flutter_switch.dart';
import 'package:oengoo/view/widgets/widget_num_picker.dart';
import 'package:flutter_switch/flutter_switch.dart';

class UserHeight extends StatefulWidget {
  const UserHeight({Key? key}) : super(key: key);

  @override
  _UserHeightState createState() => _UserHeightState();
}

class _UserHeightState extends State<UserHeight> {
  bool isSwitched = false;
  bool isCm = false;
  int selectedFeet = 5;
  int selectedInches = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 80.h),
          Padding(
            padding: EdgeInsets.only(left: 34.w),
            child: circleButton(onPress: () {}, iconData: Icons.arrow_back_ios),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 45.w, right: 45.w),
              alignment: Alignment.center,
              child: customText(
                text: 'What is your current height?',
                fontSize: 35.sp,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(left: 45.w, right: 45.w),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  isCm
                      ? Container(
                          width: 180.w,
                          height: 200.h,
                          alignment: Alignment.topCenter,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            cursorColor: AppColor.whiteColor,
                            style: TextStyle(
                                fontSize: 50.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColor.greenColor),
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(3),
                            ],
                            decoration: InputDecoration(
                              suffixText: "cm",
                              suffixStyle: TextStyle(
                                  fontSize: 30.sp, color: AppColor.greenColor),
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.greenColor, width: 0.8)),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.greenColor, width: 0.8)),
                            ),
                          ))
                      : SizedBox(
                          height: 200.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  numberPicker(selectedFeet,
                                      onChanged: (val) {}, min: 0, max: 11),
                                  Positioned(
                                    right: 1,
                                    bottom: 60.h,
                                    child: customText(
                                      text: "ft",
                                      fontColor: AppColor.greenColor,
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  numberPicker(selectedInches,
                                      onChanged: (val) {}, min: 1, max: 12),
                                  Positioned(
                                    right: 1,
                                    bottom: 60.h,
                                    child: customText(
                                      text: "In",
                                      fontColor: AppColor.greenColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                  SizedBox(height: 40.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText(
                        text: 'ft/in',
                        fontColor: AppColor.greenColor,
                        fontSize: 30.sp,
                      ),
                      SizedBox(width: 20.w),
                      flutterSwitch(isCm, (val) {
                        setState(() {
                          isCm = val;
                        });
                      }),
                      SizedBox(width: 20.w),
                      customText(
                        text: 'cm',
                        fontColor: AppColor.lightGreyColor,
                        fontSize: 30.sp,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            alignment: Alignment.topCenter,
            child: circleButton(onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const UserWeight()));
            }),
          )),
        ]));
  }
}
