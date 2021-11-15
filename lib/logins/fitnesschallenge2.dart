import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:oengoo/config/image_paths.dart';
import 'package:oengoo/logins/login_page.dart';
import 'package:oengoo/view/widgets/button_circle.dart';

class FitnessChallenge2 extends StatelessWidget {
  const FitnessChallenge2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 575.h,
            width: double.infinity,
            decoration: const BoxDecoration(gradient: AppColor.appThemeColor),
            child: Center(
              child: Image.asset(
                ImagePaths.challenge2Image,
                height: 313.24.h,
                width: 257.26.w,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 34.w, right: 53.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fitness Challenge",
                        style: textStyle("nunito", 35.sp, AppColor.blackColor),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Text(
                        "Track your fitness level by our smart Mobile App. Calories, sleep and training.",
                        style: textStyle("nunito", 15.sp, AppColor.blackColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: circleButton(onPress: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => const LoginPage()));
                      }))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
