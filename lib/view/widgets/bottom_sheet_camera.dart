import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/view/widgets/button_circle.dart';
import 'package:oengoo/view/widgets/custom_text.dart';

class CameraBottomSheet extends StatelessWidget {
  const CameraBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 233.h,
      width: double.infinity,
      decoration: const BoxDecoration(gradient: AppColor.appThemeColor),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 11.h,
              right: 33.w,
            ),
            alignment: Alignment.centerRight,
            child: circleButton(
              onPress: () {},
              state: 1,
              iconData: Icons.close,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 33.w),
            child: Column(
              children: [
                SizedBox(height: 20.h),
                Row(
                  children: [
                    circleButton(
                      onPress: () {},
                      state: 3,
                      color: AppColor.whiteColor,
                      iconColor: AppColor.greenColor,
                      iconData: CupertinoIcons.camera_fill,
                    ),
                    SizedBox(width: 10.w),
                    customText(
                      text: 'Take New Profile Picture',
                      fontSize: 24.sp,
                      fontColor: AppColor.blackOColor,
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    circleButton(
                      onPress: () {},
                      state: 3,
                      color: AppColor.whiteColor,
                      iconColor: AppColor.greenColor,
                      iconData: Icons.perm_media,
                    ),
                    SizedBox(width: 10.w),
                    customText(
                      text: 'Select Profile Picture',
                      fontSize: 24.sp,
                      fontColor: AppColor.blackOColor,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
