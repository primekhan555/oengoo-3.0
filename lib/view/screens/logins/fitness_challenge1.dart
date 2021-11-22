import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/image_paths.dart';
import 'package:oengoo/main.dart';
import 'package:oengoo/view/widgets/button_circle.dart';
import 'package:oengoo/view/widgets/custom_text.dart';

import 'fitnesschallenge2.dart';

class FitnessChallenge1 extends StatefulWidget {
  const FitnessChallenge1({Key? key}) : super(key: key);

  @override
  _FitnessChallenge1State createState() => _FitnessChallenge1State();
}

class _FitnessChallenge1State extends State<FitnessChallenge1> {
  double? h;
  double? w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: h! / 10,
              ),
              Image.asset(ImagePaths.challenge1Image),
            ],
          ),
          Container(
            height: 339.h,
            width: 426.w,
            decoration: const BoxDecoration(gradient: AppColor.appThemeColor),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20.sp, right: 40.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText(text: 'Fitness Challenge', fontSize: 35.sp),
                      SizedBox(
                        height: 40.h,
                      ),
                      customText(
                          text:
                              'Track your fitness level by our smart Mobile App. Calories, sleep and training.',
                          fontSize: 15.sp),
                      SizedBox(
                        height: 40.h,
                      ),
                      Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: circleButton(onPress: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const FitnessChallenge2()));
                          }))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
