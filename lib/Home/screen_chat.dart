import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oengoo/config/colors.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:oengoo/view/widgets/appbar_custom.dart';
import 'package:oengoo/view/widgets/custom_text.dart';
// import 'package:oengoo/new/screen_settings.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(onNotificationsClicked: null, onSettingClick: null),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 926.h - 180.h,
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 34.w, right: 34.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customText(
                              text: 'Monday', fontSize: 12.sp, fontColor: AppColor.greenColor),
                          customText(
                              text: 'Today', fontSize: 40.sp, fontColor: AppColor.blackOColor),
                          customText(
                              text: 'November 11,2021',
                              fontSize: 12.sp,
                              fontColor: AppColor.blackOColor),
                        ],
                      ),
                      SizedBox(height: 30.h),
                      ListView.builder(
                          itemCount: 30,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (ctx, i) {
                            if (i % 2 == 1) {
                              return messageBubbleItem(message: 'Hello', time: 'Yesterday,7:12 am');
                            }
                            return messageBubbleItem(
                                message: 'Hello', time: 'Yesterday,7:12 am', state: 1);
                          }),
                    ],
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                sendMessageBox(),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Row(
                    children: [
                      circleButton(Icons.attach_file),
                      circleButton(Icons.send),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  sendMessageBox() {
    return Container(
      height: 70.h,
      color: Colors.transparent,
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 60.h,
        color: AppColor.greenColor,
        child: Row(
          children: [
            Expanded(
                child: Container(
              padding: EdgeInsets.only(left: 20.w, bottom: 12.h),
              child: TextField(
                cursorColor: AppColor.whiteColor,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type here..',
                    hintStyle: TextStyle(color: AppColor.whiteColor, fontSize: 12.sp)),
              ),
            )),
          ],
        ),
      ),
    );
  }

  circleButton(IconData icon) {
    return Container(
      height: 70.h,
      width: 70.h,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColor.greenColor,
      ),
      child: Container(
        height: 50.h,
        width: 50.h,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: RawMaterialButton(
          onPressed: () {},
          fillColor: AppColor.blackOColor,
          shape: const CircleBorder(),
          child: Icon(
            icon,
            color: AppColor.whiteColor,
          ),
        ),
      ),
    );
  }

  messageBubbleItem({
    required message,
    required time,
    int state = 0,
  }) {
    return Container(
      alignment: state == 0 ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        width: 300.w,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10),
        margin: EdgeInsets.only(bottom: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customText(text: message, fontColor: AppColor.whiteColor, fontSize: 20.sp),
            SizedBox(height: 10.h),
            customText(text: time, fontColor: AppColor.whiteColor, fontSize: 12.sp),
          ],
        ),
        decoration: BoxDecoration(
          color: state == 0 ? AppColor.greenColor : AppColor.blackOColor,
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
    );
  }
}
