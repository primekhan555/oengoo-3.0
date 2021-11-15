import 'package:flutter/material.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/Globals/globalwidgets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          // height: double.infinity,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    profileButton(() {}),
                    notificationIconButton(() {}),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Monday",
                  style: textStyle("nunito", 12.sp, AppColor.greenColor),
                ),
                Text(
                  "Today",
                  style: textStyle("nunito", 40.sp, AppColor.blackColor),
                ),
                Text(
                  "November 11,2021",
                  style: textStyle("nunito", 12.sp, AppColor.blackColor),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                  ),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 30.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: TextField(
                          style: textStyle("nunito", 12.sp, AppColor.blackColor),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: AppColor.greenColor,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.r),
                      border: Border.all(color: AppColor.greenColor)),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Expanded(
                  child: Container(
                    // color: Colors.pink,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => horizontalGreenLine(),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return notificationItem();
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget notificationItem() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 5.h),
      height: 70.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
      ),
      // alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          profileIcon(),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              // color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Saddam sent you steps challenge",
                    maxLines: 2,
                    style: textStyle("nunito", 12.sp, AppColor.blackColor),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Start your streak now",
                        style: textStyle("nunito", 11.sp, AppColor.blackColor),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          crossButton(),
                          SizedBox(
                            width: 8.w,
                          ),
                          checkButton(),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              // color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Yesterday",
                    style: textStyle("nunito", 12.sp, AppColor.blackColor),
                  ),
                  Text(
                    "09:39 pm",
                    style: textStyle("nunito", 12.sp, AppColor.blackColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget checkButton() {
    return CircleAvatar(
      radius: 10.r,
      backgroundColor: Colors.red,
      child: Icon(Icons.close, color: Colors.white, size: 13.r),
    );
  }

  Widget crossButton() {
    return CircleAvatar(
      radius: 10.r,
      backgroundColor: AppColor.greenColor,
      child: Icon(Icons.check, color: Colors.white, size: 13.r),
    );
  }

  Widget profileIcon() {
    return Expanded(
      child: FittedBox(
        child: Container(
          // color: Colors.red,
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/male.png"),
          ),
        ),
      ),
    );
  }
}
