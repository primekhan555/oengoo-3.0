import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/config/sizes.dart';
import 'package:oengoo/view/widgets/appbar_custom.dart';
import 'package:oengoo/view/widgets/custom_text.dart';

class StepsSettingsScreen extends StatelessWidget {
  const StepsSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(onSettingClick: null, onNotificationsClicked: null),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 34.w),
        child: Column(
          children: [
            Sizes.h30,
            stepsItem(
                title: 'Use Default',
                desc: 'Based on WHO Recommendation',
                option: '10K steps a day'),
            stepsItem(
                title: 'App Settings',
                desc: 'Choose any level that fits you',
                option: '5000 Steps',
                state: 1),
          ],
        ),
      ),
    );
  }

  stepsItem({required title, required desc, required option, int state = 0}) {
    return Container(
      child: Column(
        children: [
          Sizes.h10,
          Container(
            height: 60.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText(
                      text: title,
                      fontSize: 20.sp,
                    ),
                    Sizes.h20,
                    customText(text: desc, fontColor: AppColor.lightGreyColor, fontSize: 10.sp),
                  ],
                ),
                Row(
                  children: [
                    customText(text: option, fontSize: 20.sp, fontColor: Colors.green),
                    if (state == 1)
                      SizedBox(
                          height: 30.h,
                          width: 30.h,
                          child: RawMaterialButton(
                            child: Icon(
                              Icons.arrow_downward,
                              size: 20.h,
                            ),
                            onPressed: () {},
                          ))
                  ],
                ),
              ],
            ),
          ),
          Sizes.h10,
          horizontalGreenLine(),
        ],
      ),
    );
  }
}
