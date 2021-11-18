import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:oengoo/Home/screen_notification.dart';
import 'package:oengoo/Home/screen_settings.dart';
import 'package:oengoo/config/image_paths.dart';
import 'package:oengoo/view/widgets/appbar_custom.dart';
import 'package:oengoo/view/widgets/custom_text.dart';
import 'package:oengoo/view/widgets/text_rich.dart';
import 'package:oengoo/view/widgets/widget_flutter_switch.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  bool isPrivateAccount = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        state: 1,
        onNotificationsClicked: () {
          Navigator.push(context, MaterialPageRoute(builder: (ctx) => NotificationScreen()));
        },
        onSettingClick: () {
          Navigator.push(context, MaterialPageRoute(builder: (ctx) => SettingScreen()));
        },
      ),
      body: Container(
        padding: EdgeInsets.only(left: 34.w, right: 34.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Container(
                  height: 102.h,
                  width: 102.h,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Image.asset(ImagePaths.maleImage),
                  ),
                  decoration:
                      const BoxDecoration(color: AppColor.greenColor, shape: BoxShape.circle),
                ),
                Container(
                  height: 27.h,
                  width: 27.w,
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.edit,
                    size: 20.h,
                    color: Colors.white,
                  ),
                  decoration:
                      const BoxDecoration(color: AppColor.blackColor, shape: BoxShape.circle),
                )
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
                routineContainer(ImagePaths.trainingImage, "Training", "2:00", "Hours"),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: richText(text1: 'Last Update: ', text2: '30 min ago', text3: ''),
            ),
            SizedBox(height: 20.h),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText(text: 'Oengoo ID', fontSize: 20.sp),
                    customText(text: '0932849', fontSize: 20.sp, fontColor: AppColor.greenColor),
                  ],
                ),
                SizedBox(height: 20.h),
                Container(height: 1.h, width: 270.w, color: AppColor.greenColor),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText(text: 'Personal Information', fontSize: 20.sp),
                    customText(
                        text: 'Only Visible yourself',
                        fontSize: 10.sp,
                        fontColor: AppColor.lightGreyColor),
                  ],
                ),
                SizedBox(height: 20.h),
                rowItem('Name', 'Wasil Khan'),
                rowItem('Location', 'Peshawar, Pakistan'),
                rowItem('Gender', 'Male'),
                rowItem('D.O.B', '10/04/1996'),
                rowItem('Weight', '53.4 kg'),
                rowItem('Height', '5ft 6in'),
                SizedBox(height: 20.h),
                Container(height: 1.h, width: 270.w, color: AppColor.greenColor),
                SizedBox(height: 20.h),
                rowItem('Route', 'Golf Course Track', state: 1),
                SizedBox(height: 10.h),
                Container(height: 1.h, width: 270.w, color: AppColor.greenColor),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText(text: 'Private Account'),
                    SizedBox(height: 18.h, width: 36.w),
                    flutterSwitch(isPrivateAccount, (bool val) {
                      setState(() {
                        isPrivateAccount = val;
                      });
                    }, state: 1),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  rowItem(String title, String text, {int state = 0}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customText(text: title, fontSize: state == 0 ? 16.sp : 20.sp),
            customText(text: text, fontSize: 12.sp, fontColor: AppColor.lightGreen),
          ],
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
