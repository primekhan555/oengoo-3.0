import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/config/decorations.dart';
import 'package:oengoo/config/image_paths.dart';
import 'package:oengoo/config/sizes.dart';
import 'package:oengoo/view/widgets/appbar_custom.dart';
import 'package:oengoo/view/widgets/custom_text.dart';
import 'package:oengoo/view/widgets/text_rich.dart';

class WeeklyChallengesScreen extends StatelessWidget {
  const WeeklyChallengesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(onSettingClick: null, onNotificationsClicked: null),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Sizes.h30,
            Container(
              padding: EdgeInsets.only(left: 10.w),
              child: Column(
                children: [
                  customText(text: 'Weekly', fontSize: 25.sp),
                  customText(text: 'Challenges', fontSize: 14.sp),
                ],
              ),
            ),
            Sizes.h20,
            Expanded(
              child: ListView.separated(
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (ctx, i) {
                  return challengeItem(
                    text1: 'Complete ',
                    text2: '3K steps',
                    text3: ' streak with a friend',
                  );
                },
                separatorBuilder: (ctx, i) {
                  return Sizes.h10;
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  challengeItem({String? text1, String? text2, String? text3}) {
    return Container(
      height: 97.h,
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(30.r),
          boxShadow: Decorations.shadow,
          border: Border.all(color: AppColor.greenColor)),
      child: Row(
        children: [
          Expanded(
              child: Container(
            alignment: Alignment.center,
            child: customText(
                text: 'Streak Challenge',
                fontColor: AppColor.whiteColor,
                fontSize: 15.sp,
                textAlign: TextAlign.center),
            decoration: BoxDecoration(
              color: AppColor.greenColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(28.r),
                bottomLeft: Radius.circular(28.r),
              ),
            ),
          )),
          Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.only(left: 6.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    richText(
                        text1: text1!,
                        text2: text2!,
                        text3: text3!,
                        state: 1,
                        textAlign: TextAlign.left),
                    Sizes.h10,
                    Stack(
                      children: [
                        Container(
                          height: 5.h,
                          decoration: BoxDecoration(
                              color: AppColor.greenColor, borderRadius: BorderRadius.circular(5.r)),
                        ),
                        Container(
                          height: 5.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              color: AppColor.blackOColor,
                              borderRadius: BorderRadius.circular(5.r)),
                        ),
                      ],
                    )
                  ],
                ),
              )),
          Expanded(
            child: Image.asset(
              ImagePaths.friendsChallengeImage,
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}
