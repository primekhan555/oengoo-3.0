import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/view/screens/screen_route.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:oengoo/view/screens/screen_notification.dart';
import 'package:oengoo/view/screens/screen_settings.dart';
import 'package:oengoo/config/image_paths.dart';
import 'package:oengoo/config/sizes.dart';
import 'package:oengoo/view/widgets/appbar_custom.dart';
import 'package:oengoo/view/widgets/bottom_custom.dart';
import 'package:oengoo/view/widgets/custom_text.dart';
import 'package:oengoo/view/widgets/text_rich.dart';
import 'package:oengoo/view/widgets/widget_flutter_switch.dart';

class UserProfile extends StatefulWidget {
  final int state;
  const UserProfile({Key? key, this.state = 0}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  bool isPrivateAccount = false;
  int state = 0;
  @override
  void initState() {
    state = widget.state;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: state == 0
          ? CustomAppBar(
              state: 1,
              onNotificationsClicked: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => NotificationScreen()));
              },
              onSettingClick: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => SettingScreen()));
              },
            )
          : const CustomAppBar(onNotificationsClicked: null, onSettingClick: null),
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
                  child: RawMaterialButton(
                    child: Icon(state == 0 ? Icons.edit : CupertinoIcons.camera_fill,
                        size: 17.h, color: Colors.white),
                    onPressed: () {
                      setState(() {
                        state = 1;
                      });
                    },
                  ),
                  decoration:
                      const BoxDecoration(color: AppColor.blackColor, shape: BoxShape.circle),
                )
              ],
            ),
            Sizes.h20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                routineContainer(ImagePaths.stepsImage, "Steps", "3890", "per hr"),
                routineContainer(ImagePaths.caloriesImage, "Calories", "950", "Kcal"),
                routineContainer(ImagePaths.sleepImage, "Sleep", "8:30", "Hours"),
                routineContainer(ImagePaths.trainingImage, "Training", "2:00", "Hours"),
              ],
            ),
            Sizes.h10,
            Container(
              alignment: Alignment.centerRight,
              child: richText(text1: 'Last Update: ', text2: '30 min ago', text3: ''),
            ),
            Sizes.h15,
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText(text: 'Oengoo ID', fontSize: 20.sp),
                    customText(text: '0932849', fontSize: 20.sp, fontColor: AppColor.greenColor),
                  ],
                ),
                Sizes.h15,
                Container(height: 1.h, width: 270.w, color: AppColor.greenColor),
                Sizes.h15,
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
                Sizes.h15,
                rowItem('Name', 'Wasil Khan', onTap: state == 1 ? () {} : null),
                rowItem('Location', 'Peshawar, Pakistan', onTap: state == 1 ? () {} : null),
                rowItem('Gender', 'Male', onTap: state == 1 ? () {} : null),
                rowItem('D.O.B', '10/04/1996', onTap: state == 1 ? () {} : null),
                rowItem('Weight', '53.4 kg', onTap: state == 1 ? () {} : null),
                rowItem('Height', '5ft 6in', onTap: state == 1 ? () {} : null),
                SizedBox(
                  height: 20.h,
                ),
                Container(height: 1.h, width: 270.w, color: AppColor.greenColor),
                Sizes.h15,
                rowItem('Route', 'Golf Course Track',
                    myState: 1,
                    onTap: state == 1
                        ? () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (ctx) => const RouteScreen()));
                          }
                        : null),
                Sizes.h10,
                Container(height: 1.h, width: 270.w, color: AppColor.greenColor),
                Sizes.h15,
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
                if (state == 1) Sizes.h40,
                if (state == 1) customButton(onPress: () {}, text: 'Update'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  rowItem(String title, String text, {int myState = 0, VoidCallback? onTap}) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            customText(text: title, fontSize: myState == 0 ? 16.sp : 20.sp),
            const Spacer(),
            customText(text: text, fontSize: 12.sp, fontColor: AppColor.lightGreen),
            if (state == 1) Sizes.w10,
            if (state == 1)
              Container(
                height: 16.h,
                width: 16.h,
                alignment: Alignment.center,
                child: RawMaterialButton(
                  onPressed: onTap,
                  child: Icon(
                    Icons.edit,
                    size: 20.h,
                  ),
                ),
              )
          ],
        ),
        Sizes.h10,
      ],
    );
  }
}
