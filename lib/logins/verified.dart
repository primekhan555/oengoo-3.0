import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:oengoo/config/image_paths.dart';
import 'package:oengoo/profileInfo/basic_info.dart';
import 'package:oengoo/view/widgets/bottom_custom.dart';
import 'package:oengoo/view/widgets/custom_text.dart';

class VerifiedScreen extends StatelessWidget {
  const VerifiedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 575.h,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: customText(
                    text: 'Verified',
                    fontColor: AppColor.greenColor,
                    fontSize: 55.h,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    ImagePaths.verifyImage,
                    height: 168.h,
                    width: 168.h,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  customText(text: 'Your number is Verified', fontSize: 20.sp),
                  SizedBox(height: 20.h),
                  customText(text: 'Proceed to continue using this App', fontSize: 20.sp),
                ],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.topCenter,
                child: customButton(
                    text: 'Proceed',
                    onPress: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (ctx) => const BasicInformation()));
                    }),
              ),
            ),
          ],
        )),
      ]),
    );
  }
}
