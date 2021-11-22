import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/Globals/globalwidgets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/image_paths.dart';
import 'package:oengoo/view/widgets/appbar_custom.dart';
import 'package:oengoo/view/widgets/custom_text.dart';
import 'package:oengoo/view/widgets/search_textfield.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(
          onSettingClick: null,
          onNotificationsClicked: null,
          state: 2,
          state2Icon: Icons.notifications),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 34.w),
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
            SizedBox(height: 30.h),
            searchTextField(context),
            SizedBox(height: 10.h),
            Expanded(
              child: Container(
                // color: Colors.pink,
                child: ListView.separated(
                  separatorBuilder: (context, index) => horizontalGreenLine(),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return notificationItem(
                      'Saddam sent you steps challenge. Start your streak now',
                      onReject: () {},
                      onAccept: () {},
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget notificationItem(String text, {required onReject, required onAccept}) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 5.h),
      height: 70.h,
      // alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 53.h,
            width: 53.h,
            decoration: const BoxDecoration(
              color: AppColor.lightGreen,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              ImagePaths.maleImage,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customText(
                    text: text,
                    fontSize: 14.sp,
                  )
                ],
              ),
            ),
          ),
          Row(
            children: [
              circleActionButton(onTap: onReject, iconData: Icons.close, color: Colors.red),
              SizedBox(width: 8.w),
              circleActionButton(
                  onTap: onAccept, iconData: Icons.check, color: AppColor.greenColor),
            ],
          ),
          SizedBox(width: 8.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customText(text: 'Yesterday', fontSize: 11.sp),
              customText(text: '09:39 pm', fontSize: 11.sp),
            ],
          ),
        ],
      ),
    );
  }

  circleActionButton({required onTap, required iconData, required color}) {
    return SizedBox(
      height: 30.h,
      width: 30.h,
      child: RawMaterialButton(
        onPressed: onTap,
        shape: const CircleBorder(),
        fillColor: color,
        child: Icon(
          iconData,
          color: CupertinoColors.white,
          size: 20.h,
        ),
      ),
    );
  }
}
