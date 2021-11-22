import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/main.dart';
import 'package:oengoo/view/widgets/bottom_custom.dart';
import 'package:oengoo/view/widgets/custom_text.dart';
import 'package:oengoo/view/widgets/custom_textfield.dart';

import 'gender_selection.dart';

class BasicInformation extends StatefulWidget {
  const BasicInformation({Key? key}) : super(key: key);

  @override
  _BasicInformationState createState() => _BasicInformationState();
}

class _BasicInformationState extends State<BasicInformation> {
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: 926.h,
          padding: EdgeInsets.only(left: 34.w, right: 34.w),
          child: Column(
            children: [
              SizedBox(
                height: screenHeight! * 0.1,
              ),
              SizedBox(
                height: 575.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText(text: 'Basic Information', fontSize: 30),
                    SizedBox(
                      height: 40.h,
                    ),
                    customTextField(label: 'First Name', hintText: 'Your Name here'),
                    SizedBox(
                      height: 40.h,
                    ),
                    customTextField(label: 'Last Name', hintText: 'Your Last Name Here'),
                    SizedBox(
                      height: 40.h,
                    ),
                    customTextField(hintText: '00 | 00 | 0000', label: 'Birthday'),
                    SizedBox(
                      height: 40.h,
                    ),
                    customTextField(label: 'User Name', hintText: 'Your User Name Here'),
                    SizedBox(
                      height: 40.h,
                    ),
                    customTextField(label: 'Email (Optional)', hintText: 'example@gmail.com'),
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.only(top: 40.h),
                alignment: Alignment.topCenter,
                child: customButton(
                    text: 'Next',
                    onPress: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (ctx) => const WhatsYourGender()));
                    }),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
