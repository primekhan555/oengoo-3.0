import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/image_paths.dart';
import 'package:oengoo/view/widgets/bottom_sheet_camera.dart';
import 'package:oengoo/view/widgets/button_circle.dart';
import 'package:oengoo/view/widgets/custom_text.dart';

import 'getstarted.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({Key? key}) : super(key: key);

  @override
  _ProfilePictureState createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 80.h),
        Padding(
          padding: EdgeInsets.only(left: 34.w),
          child: circleButton(onPress: () {}, iconData: Icons.arrow_back_ios, state: 1),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 45.w, right: 45.w),
            alignment: Alignment.center,
            child: customText(
              text: 'Upload Profile Picture',
              fontSize: 35.sp,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            alignment: Alignment.topCenter,
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                SizedBox(
                  height: 266.h,
                  width: 266.h,
                  child: Image.asset(ImagePaths.dummyProfileImage),
                ),
                Positioned(
                  bottom: 40.h,
                  child: circleButton(
                      onPress: () {
                        _scaffoldKey.currentState!
                            .showBottomSheet((context) => const CameraBottomSheet());
                      },
                      state: 2,
                      color: AppColor.blackOColor,
                      iconData: CupertinoIcons.camera_fill),
                )
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 34.w, right: 34.w),
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            customText(
              text: 'Skip',
              fontSize: 30.sp,
              fontColor: AppColor.greenColor,
            ),
            SizedBox(width: 10.w),
            circleButton(
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) => const GetStarted()));
                },
                state: 1),
          ]),
        ),
        SizedBox(height: 34.h),
      ]),
    );
  }
}
