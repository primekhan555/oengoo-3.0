import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:oengoo/Home/challengeInsteps.dart';

class SendChallenge extends StatefulWidget {
  const SendChallenge({Key? key}) : super(key: key);

  @override
  _SendChallengeState createState() => _SendChallengeState();
}

class _SendChallengeState extends State<SendChallenge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Container(
          height: double.infinity,
          width: 310.w,
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35.h,
                    width: 35.w,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Icon(Icons.arrow_back_ios, color: Colors.white),
                    ),
                    decoration: BoxDecoration(color: AppColor.greenColor, shape: BoxShape.circle),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SendChallengeInSteps()));
                      },
                      child: Image.asset("assets/images/challengesomeone.png"))
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 110.h,
                        width: 110.w,
                        child: Image.asset(
                          "assets/images/otheruserprofilepic.png",
                          fit: BoxFit.fill,
                        ),
                        decoration: BoxDecoration(shape: BoxShape.circle),
                      ),
                      Text(
                        "Private Account",
                        style: textStyle("nunito", 15.sp, AppColor.blackColor),
                      )
                    ],
                  ),
                  routineContainer("assets/images/steps.png", "Steps", "3890", "per hr"),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Oengoo ID",
                    style: textStyle("nunitio", 15.sp, AppColor.blackColor),
                  ),
                  Text(
                    "09321",
                    style: textStyle("nunitio", 15.sp, AppColor.greenColor),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 1.h,
                width: 285,
                color: AppColor.greenColor,
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Personal Information",
                    style: textStyle("nunitio", 15.sp, AppColor.blackColor),
                  ),
                  Text(
                    "only visible yourself",
                    style: textStyle("nunitio", 8.sp, Colors.grey[400]),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Name",
                    style: textStyle("nunitio", 13.sp, AppColor.blackColor),
                  ),
                  Text(
                    "Usman Khan",
                    style: textStyle("nunitio", 10.sp, AppColor.greenColor),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Location",
                    style: textStyle("nunitio", 13.sp, AppColor.blackColor),
                  ),
                  Text(
                    "Peshawar,Pakistan",
                    style: textStyle("nunitio", 10.sp, AppColor.greenColor),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Gender",
                    style: textStyle("nunitio", 13.sp, AppColor.blackColor),
                  ),
                  Text(
                    "Male",
                    style: textStyle("nunitio", 10.sp, AppColor.greenColor),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "D.O.B",
                    style: textStyle("nunitio", 13.sp, AppColor.blackColor),
                  ),
                  Text(
                    "10,july,1996",
                    style: textStyle("nunitio", 10.sp, AppColor.greenColor),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Weight",
                    style: textStyle("nunitio", 13.sp, AppColor.blackColor),
                  ),
                  Text(
                    "53.4 kg",
                    style: textStyle("nunitio", 10.sp, AppColor.greenColor),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Height",
                    style: textStyle("nunitio", 13.sp, AppColor.blackColor),
                  ),
                  Text(
                    "5ft 6m",
                    style: textStyle("nunitio", 10.sp, AppColor.greenColor),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 1.h,
                width: 285,
                color: AppColor.greenColor,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
