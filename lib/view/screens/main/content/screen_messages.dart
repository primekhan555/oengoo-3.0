import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:oengoo/Home/chatRoom.dart';
import 'package:oengoo/config/colors.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Monday",
                style: textStyle("nunito", 10.sp, AppColor.greenColor),
              ),
              Text(
                "Today",
                style: textStyle("nunito", 20.sp, AppColor.blackColor),
              ),
              Text(
                "October 25,2021",
                style: textStyle("nunito", 10.sp, AppColor.blackColor),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 30.h,
              width: 320.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: AppColor.greenColor)),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: AppColor.greenColor,
                  ),
                  contentPadding: EdgeInsets.all(10),
                  hintText: "Search",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChatRoom()));
          },
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              width: 60.w,
              child: Stack(
                children: [
                  Container(
                      height: 45.h,
                      width: 45.w,
                      decoration: BoxDecoration(color: AppColor.greenColor, shape: BoxShape.circle),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Image.asset("assets/images/male.png"),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 25),
                    child: Image.asset("assets/images/fireboot.png"),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "User Name",
                  style: textStyle("nunito", 14.sp, AppColor.blackColor),
                ),
                Text(
                  "Lorem ipsum, or lipsum as it…",
                  style: textStyle("nunito", 10.sp, AppColor.blackColor),
                ),
              ],
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Yesterday",
                style: textStyle("nunito", 10.sp, AppColor.blackColor),
              ),
              Text(
                "8.30 pm",
                style: textStyle("nunito", 10.sp, AppColor.blackColor),
              )
            ])
          ]),
        )
      ]),
    );
  }
}
