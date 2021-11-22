import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:oengoo/config/image_paths.dart';
import 'package:oengoo/view/widgets/button_circle.dart';
import 'package:oengoo/view/widgets/custom_text.dart';

import 'age.dart';

class WhatsYourGender extends StatefulWidget {
  const WhatsYourGender({Key? key}) : super(key: key);

  @override
  _WhatsYourGenderState createState() => _WhatsYourGenderState();
}

class _WhatsYourGenderState extends State<WhatsYourGender> {
  bool male = false;
  bool female = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 926.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80.h),
            Padding(
              padding: EdgeInsets.only(left: 34.w),
              child: circleButton(onPress: () {}, iconData: Icons.arrow_back_ios),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: customText(text: 'I am a', fontSize: 35.sp),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.topCenter,
                child: Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          male = true;
                          female = false;
                        });
                      },
                      child: Container(
                        height: 137.43.h,
                        width: 137.43.h,
                        decoration: BoxDecoration(
                          color: male ? AppColor.greenColor : Colors.grey[300],
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12, left: 10),
                          child: Image.asset(
                            ImagePaths.maleImage,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    if (male)
                      Image.asset(
                        ImagePaths.checkImage,
                        height: 40.h,
                      )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.topCenter,
                child: Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    InkWell(
                      focusColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          male = false;
                          female = true;
                        });
                      },
                      child: Container(
                        height: 137.43.h,
                        width: 137.43.h,
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(
                          color: female ? AppColor.greenColor : Colors.grey[300],
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12, left: 10),
                          child: Image.asset(
                            ImagePaths.femaleImage,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    if (female)
                      Image.asset(
                        ImagePaths.checkImage,
                        height: 40.h,
                      )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
              alignment: Alignment.topCenter,
              child: circleButton(onPress: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const UserAge()));
              }),
            ))
          ],
        ),
      ),
    );
  }
}
