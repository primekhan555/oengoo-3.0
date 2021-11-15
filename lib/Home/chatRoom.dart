import 'package:flutter/material.dart';
import 'package:oengoo/config/colors.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
// import 'package:oengoo/new/settings1.dart';

class ChatRoom extends StatelessWidget {
  const ChatRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  height: 35.h,
                  width: 35.w,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                  decoration: BoxDecoration(color: AppColor.greenColor, shape: BoxShape.circle),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  "Monday",
                  style: textStyle("nunito", 12.sp, AppColor.greenColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  "Today",
                  style: textStyle("nunito", 40.sp, AppColor.blackColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  "November 11,2021",
                  style: textStyle("nunito", 12.sp, AppColor.blackColor),
                ),
              ),
              SizedBox(height: 25.h),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: conversation(context),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 80.h,
                color: Colors.white,
                child: Stack(
                  children: [
                    Positioned(
                      // top: 20.h,
                      top: 20.h,
                      bottom: 0.h,
                      left: 0.w,
                      right: 0.w,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        width: double.infinity,
                        height: 60.h,
                        color: AppColor.greenColor,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                          ),
                          width: 220.w,
                          child: TextField(
                            style: textStyle("nunito", 18.sp, AppColor.blackColor),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Type here",
                                hintStyle: textStyle("nunito", 18.sp, Colors.black54)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10.h,
                      right: 13.w,
                      child: InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     (MaterialPageRoute(
                          //         builder: (context) => SettingsOne())));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColor.greenColor,
                            shape: BoxShape.circle,
                          ),
                          width: 65.w,
                          height: 65.h,
                          child: Container(
                            width: 40.w,
                            height: 40.h,
                            child: Image.asset(
                              "assets/images/send.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10.h,
                      right: 70.w,
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColor.greenColor,
                            shape: BoxShape.circle,
                          ),
                          width: 65.w,
                          height: 65.h,
                          child: Container(
                              width: 40.w,
                              height: 40.h,
                              child: Image.asset("assets/images/attach.png", fit: BoxFit.contain))),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget conversation(context) {
    return ListView(
      children: [
        rightChatItem(context),
        SizedBox(
          height: 8.h,
        ),
        leftChatItem(context),
        SizedBox(
          height: 8.h,
        ),
        rightChatItem(context),
        SizedBox(
          height: 8.h,
        ),
        leftChatItem(context),
        SizedBox(
          height: 8.h,
        ),
        rightChatItem(context),
        SizedBox(
          height: 8.h,
        ),
        leftChatItem(context),
        SizedBox(
          height: 8.h,
        ),
        rightChatItem(context),
        SizedBox(
          height: 8.h,
        ),
        leftChatItem(context),
      ],
    );
  }

  Widget leftChatItem(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.h),
          alignment: Alignment.bottomRight,
          height: 90.h,
          width: 280.w,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/chat_item_black.png"), fit: BoxFit.fill),
          ),
          child: Text(
            "Yesterday, 07:28 pm",
            style: textStyle("nunito", 12.sp, Colors.white),
          ),
        ),
      ],
    );
  }

  Widget rightChatItem(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.h),
          alignment: Alignment.bottomLeft,
          height: 90.h,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/chat_item_green.png"), fit: BoxFit.fill),
          ),
          width: 280.w,
          child: Text(
            "Yesterday, 07:28 pm",
            style: textStyle("nunito", 12.sp, Colors.white),
          ),
        ),
      ],
    );
  }
}
