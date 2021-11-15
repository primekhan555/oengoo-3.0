import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/Home/chatRoom.dart';
import 'package:oengoo/Home/sendChallenge.dart';

Widget homeListView(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        appbar(context),
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
          height: 25.h,
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
          height: 25.h,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Weekly",
                style: textStyle("nunito", 20.sp, AppColor.blackColor),
              ),
              Row(
                children: [
                  Text(
                    "Challenges",
                    style: textStyle("nunito", 10.sp, AppColor.blackColor),
                  ),
                  Text(
                    "(No Weekly Challenge streaks count yet)",
                    style: textStyle("nunito", 8.sp, AppColor.greenColor),
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  Text(
                    "See All",
                    style: textStyle("nunito", 12.sp, AppColor.blackColor),
                  )
                ],
              )
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
              height: 210.h,
              width: 320.w,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColor.greenColor, width: 1.50.w),
                  borderRadius: BorderRadius.circular(28)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  challengContainers("Streak", "Challenge", "assets/images/addnewfriend.png",
                      "assets/images/streakchallenge.png"),
                  challengContainers("Steps", "Challenge", "assets/images/beatyourown.png",
                      "assets/images/stepschallenge.png"),
                  challengContainers("Friends", "Challenge", "assets/images/5ksteps.png",
                      "assets/images/friendschallenge.png")
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Text(
                "Quote",
                style: textStyle("nunito", 20.sp, AppColor.blackColor),
              ),
              Text(
                "of the Day ",
                style: textStyle("nunito", 10.sp, AppColor.blackColor),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 210.h,
              width: 320.w,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColor.greenColor, width: 1.50.w),
                  borderRadius: BorderRadius.circular(28)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 200.w,
                        child: Text(
                          "“The miracle isn’t that I finished. The miracle is that I had the courage to start.”",
                          style: textStyle("nunito", 15.sp, AppColor.blackColor),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        "John Bingham",
                        style: textStyle("nunito", 18.sp, AppColor.greenColor),
                      )
                    ],
                  ),
                  Image.asset("assets/images/quoteoftheday.png")
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    ),
  );
}

Widget championListview(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        appbar(context),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                      height: 65.h,
                      width: 65.w,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: AppColor.greenColor),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Image.asset(
                          "assets/images/male.png",
                          height: 45.h,
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Image.asset("assets/images/silver.png"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Container(
                child: Stack(
                  children: [
                    Container(
                      height: 85.h,
                      width: 85.w,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: AppColor.greenColor),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Image.asset("assets/images/male.png"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Image.asset("assets/images/gold.png"),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Container(
                    height: 65.h,
                    width: 65.w,
                    decoration: BoxDecoration(shape: BoxShape.circle, color: AppColor.greenColor),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset("assets/images/male.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Image.asset("assets/images/bronze.png"),
                  )
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              "User Name",
              style: textStyle("nunito", 18.sp, AppColor.blackColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "500k",
                  style: textStyle("nunito", 20.sp, AppColor.blackColor),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Steps",
                    style: textStyle("nunito", 15.sp, AppColor.greenColor),
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          height: 1.h,
          width: 240.w,
          color: AppColor.greenColor,
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                height: 30.h,
                width: 55.w,
                child: Center(
                    child: Text(
                  "Friend",
                  style: textStyle("nunito", 12.sp, AppColor.blackColor),
                ))),
            Container(
                height: 30.h,
                width: 55.w,
                child: Center(
                    child: Text(
                  "City",
                  style: textStyle("nunito", 12.sp, AppColor.blackColor),
                ))),
            Container(
                height: 30.h,
                width: 55.w,
                child: Center(
                    child: Text(
                  "Country",
                  style: textStyle("nunito", 12.sp, AppColor.blackColor),
                ))),
            Container(
                height: 30.h,
                width: 55.w,
                child: Center(
                    child: Text(
                  "Globe",
                  style: textStyle("nunito", 12.sp, AppColor.blackColor),
                )))
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Container(
          height: 30.h,
          width: 310.w,
          decoration:
              BoxDecoration(color: AppColor.greenColor, borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Daily",
                style: textStyle("nunito", 11.sp, Colors.white),
              ),
              Text(
                "Weekly",
                style: textStyle("nunito", 11.sp, Colors.white),
              ),
              Text(
                "Monthly",
                style: textStyle("nunito", 11.sp, Colors.white),
              ),
              Text(
                "All Time",
                style: textStyle("nunito", 11.sp, Colors.white),
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget dailyStepsListview(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        appbar(context),
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => SendChallenge()));
          },
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 60.w,
                        child: Stack(
                          children: [
                            Container(
                                height: 45.h,
                                width: 45.w,
                                decoration: BoxDecoration(
                                    color: AppColor.greenColor, shape: BoxShape.circle),
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
                      Text(
                        "User Name",
                        style: textStyle("nunito", 10.sp, AppColor.blackColor),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "2987",
                            style: textStyle("nunito", 12.sp, AppColor.blackColor),
                          ),
                          Text(
                            "Steps",
                            style: textStyle("nunito", 8.sp, AppColor.greenColor),
                          )
                        ],
                      ),
                      Image.asset("assets/images/multiplesteps.png")
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "5k",
                        style: textStyle("nunito", 12.sp, AppColor.blackColor),
                      ),
                      Text(
                        "Steps",
                        style: textStyle("nunito", 8.sp, AppColor.greenColor),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget messagesListview(BuildContext context) {
  return SingleChildScrollView(
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      appbar(context),
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
