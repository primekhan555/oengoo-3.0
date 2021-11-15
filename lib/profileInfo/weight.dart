import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oengoo/config/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/view/widgets/button_circle.dart';
import 'package:oengoo/view/widgets/custom_text.dart';
import 'package:oengoo/view/widgets/widget_flutter_switch.dart';

class UserWeight extends StatefulWidget {
  const UserWeight({Key? key}) : super(key: key);

  @override
  _UserWeightState createState() => _UserWeightState();
}

class _UserWeightState extends State<UserWeight> {
  bool isKG = false;

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
                text: 'What is your current weight?',
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
                  Container(
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
                          suffixText: isKG ? "KG" : "LB",
                          suffixStyle: TextStyle(fontSize: 30.sp, color: AppColor.greenColor),
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColor.greenColor, width: 0.8)),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColor.greenColor, width: 0.8)),
                        ),
                      )),
                  SizedBox(height: 40.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText(
                        text: 'LB',
                        fontColor: AppColor.greenColor,
                        fontSize: 30.sp,
                      ),
                      SizedBox(width: 20.w),
                      flutterSwitch(isKG, (val) {
                        setState(() {
                          isKG = val;
                        });
                      }),
                      SizedBox(width: 20.w),
                      customText(
                        text: 'KG',
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => const UserWeight()));
            }),
          )),
        ]));
  }
}
