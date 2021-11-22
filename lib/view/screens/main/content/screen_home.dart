import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oengoo/view/screens/screen_other_profile.dart';
import 'package:oengoo/view/screens/screen_send_challenge.dart';
import 'package:oengoo/view/screens/screen_steps_challenge.dart';
import 'package:oengoo/view/screens/screen_weekly_challenges.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/image_paths.dart';
import 'package:oengoo/view/widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 34.w, right: 34.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(text: 'Monday', fontSize: 12.sp, fontColor: AppColor.greenColor),
                customText(text: 'Today', fontSize: 40.sp, fontColor: AppColor.blackOColor),
                customText(
                    text: 'November 11,2021', fontSize: 12.sp, fontColor: AppColor.blackOColor),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                routineContainer(ImagePaths.stepsImage, "Steps", "3890", "per hr"),
                routineContainer(ImagePaths.caloriesImage, "Calories", "950", "Kcal"),
                routineContainer(ImagePaths.sleepImage, "Sleep", "8:30", "Hours"),
                routineContainer(ImagePaths.trainingImage, "Training", "2:00", "Hours")
              ],
            ),
            SizedBox(height: 30.h),
            customText(
                text: 'Weekly',
                fontSize: 25.sp,
                fontColor: AppColor.blackOColor,
                fontWeight: FontWeight.bold),
            SizedBox(height: 8.h),
            Row(
              children: [
                customText(text: 'Challenges', fontSize: 14.sp, fontColor: AppColor.blackOColor),
                customText(
                    text: ' (No Weekly Challenge streaks count yet)',
                    fontSize: 10.sp,
                    fontColor: AppColor.greenColor),
                const Spacer(),
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => const WeeklyChallengesScreen()));
                    },
                    child: customText(
                        text: 'See all', fontSize: 14.sp, fontColor: AppColor.blackOColor)),
              ],
            ),
            SizedBox(height: 30.h),
            Container(
              height: 234.h,
              width: 360.w,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColor.greenColor, width: 2.w),
                  borderRadius: BorderRadius.circular(30.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                        context, MaterialPageRoute(builder: (ctx) => const StepsChallengeScreen())),
                    child: challengeContainers("Streak\nChallenge", ImagePaths.streakChallengeImage,
                        richText1: 'Add new ',
                        richText2: 'Friend',
                        richText3: ' and Challenge a step streak'),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context, MaterialPageRoute(builder: (ctx) => const SendChallengeScreen())),
                    child: challengeContainers("Steps\nChallenge", ImagePaths.stepsChallengeImage,
                        richText1: 'Beat your', richText2: '', richText3: '\nOwn steps record'),
                  ),
                  challengeContainers("Friends\nChallenge", ImagePaths.friendsChallengeImage,
                      richText1: 'Complete ',
                      richText2: '5K steps',
                      richText3: ' streak with a friend')
                ],
              ),
            ),
            SizedBox(height: 30.h),
            customText(text: "Quote", fontSize: 25.sp, fontWeight: FontWeight.bold),
            customText(text: "Of the day", fontSize: 14.sp, fontWeight: FontWeight.bold),
            SizedBox(height: 30.h),
            Container(
              height: 234.h,
              width: 360.w,
              padding: EdgeInsets.only(left: 30.w),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColor.greenColor, width: 1.50.w),
                  borderRadius: BorderRadius.circular(28)),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customText(
                              text:
                                  "“The miracle isn’t that I finished. The miracle is that I had the courage to start.”",
                              fontSize: 20.sp),
                          customText(
                              text: 'John Bingham',
                              fontColor: AppColor.greenColor,
                              fontSize: 20.sp),
                        ],
                      )),
                  Expanded(
                    child: SizedBox(
                      height: 220.h,
                      child: Image.asset(ImagePaths.runningManImage),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}
