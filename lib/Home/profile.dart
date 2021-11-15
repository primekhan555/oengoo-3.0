import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:oengoo/Home/notification.dart';
import 'package:oengoo/Home/settings1.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  bool isprivateAccount = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 120.h,
                    width: 120.w,
                    child: Center(
                      child: Stack(
                        children: [
                          Container(
                            height: 90.h,
                            width: 90.w,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Image.asset("assets/images/male.png"),
                            ),
                            decoration:
                                BoxDecoration(color: AppColor.greenColor, shape: BoxShape.circle),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 75, top: 10),
                            child: Container(
                              height: 22.h,
                              width: 22.w,
                              child: Center(
                                  child: Icon(
                                Icons.edit,
                                color: Colors.white,
                              )),
                              decoration:
                                  BoxDecoration(color: AppColor.blackColor, shape: BoxShape.circle),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25, bottom: 30),
                    child: Container(
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => SettingsOne()));
                            },
                            child: Container(
                              height: 35.h,
                              width: 35.w,
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Image.asset(
                                  "assets/images/settings.png",
                                  fit: BoxFit.fill,
                                ),
                              )),
                              decoration:
                                  BoxDecoration(color: AppColor.greenColor, shape: BoxShape.circle),
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Notifications()));
                            },
                            child: Container(
                              height: 35.h,
                              width: 35.w,
                              child: Center(
                                child: Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                ),
                              ),
                              decoration:
                                  BoxDecoration(color: AppColor.greenColor, shape: BoxShape.circle),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  mainContainers("assets/images/steps.png", "Steps", "3890", "per hr"),
                  SizedBox(
                    width: 15.w,
                  ),
                  mainContainers("assets/images/calories.png", "Calories", "950", "Kcal"),
                  SizedBox(
                    width: 15.w,
                  ),
                  mainContainers("assets/images/sleep.png", "Sleep", "8:30", "Hours"),
                  SizedBox(
                    width: 15.w,
                  ),
                  mainContainers("assets/images/training.png", "Training", "2:00", "Hours")
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Last Update:",
                      style: textStyle("nunito", 9.sp, AppColor.blackColor),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "30 min ago",
                      style: textStyle("nunito", 9.sp, AppColor.greenColor),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              oengooUserInfo(isprivateAccount, (val) {
                setState(() {
                  isprivateAccount = val;
                });
              })
            ],
          ),
        ),
      ),
    );
  }
}

Widget oengooUserInfo(bool isprivate, Function(bool) ontogl) {
  return Container(
    height: 330.h,
    width: 295.w,
    child: Column(
      children: [
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
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Routes",
              style: textStyle("nunitio", 15.sp, AppColor.blackColor),
            ),
            Text(
              "Golf course Track",
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
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Private Account",
              style: textStyle("nunitio", 15.sp, AppColor.blackColor),
            ),
            FlutterSwitch(
                inactiveColor: Colors.grey.shade300,
                activeColor: Colors.grey.shade300,
                width: 35.w,
                height: 15.h,
                toggleSize: 14.h,
                value: isprivate,
                borderRadius: 30.0,
                padding: 1.0,
                toggleColor: AppColor.greenColor,
                switchBorder: Border.all(
                  color: AppColor.greenColor,
                  width: 1.0,
                ),
                onToggle: ontogl),
          ],
        ),
      ],
    ),
  );
}
