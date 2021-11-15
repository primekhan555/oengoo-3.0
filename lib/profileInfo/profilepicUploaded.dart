import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:oengoo/profileInfo/getstarted.dart';

class ProfilePicUploaded extends StatefulWidget {
  const ProfilePicUploaded({Key? key}) : super(key: key);

  @override
  _ProfilePicUploadedState createState() => _ProfilePicUploadedState();
}

class _ProfilePicUploadedState extends State<ProfilePicUploaded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 30),
          child: Container(
            height: 50.h,
            width: 50.w,
            child: Image.asset(
              "assets/images/backbutton.png",
              height: 25.h,
            ),
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        Center(
            child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            "Profile Picture",
            style: textStyle("nunito", 24.sp, AppColor.blackColor),
          ),
          Text(
            "Updated",
            style: textStyle("nunito", 24.sp, AppColor.blackColor),
          ),
          SizedBox(
            height: 80.h,
          ),
          Container(
            height: 170.h,
            width: 170.w,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Image.asset("assets/images/profilepicture.png"),
          ),
          SizedBox(
            height: 110.h,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => GetStarted()));
            },
            child: Container(
                height: 70.h, width: 140.w, child: Image.asset("assets/images/proceed.png")),
          ),
        ]))
      ])),
    );
  }
}
