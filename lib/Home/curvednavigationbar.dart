import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:oengoo/Globals/bottom_navbar_contents.dart';
import 'package:oengoo/config/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          height: 55.h,
          child: CurvedNavigationBar(
            color: AppColor.greenColor,
            buttonBackgroundColor: AppColor.blackColor,
            backgroundColor: AppColor.greenColor,
            index: pageindex,
            height: 50.h,
            onTap: (index) {
              setState(() {
                pageindex = index;
              });
            },
            items: <Widget>[
              Container(height: 30.h, child: Image.asset("assets/images/homeicon.png")),
              Container(height: 30.h, child: Image.asset("assets/images/crown.png")),
              Container(height: 30.h, child: Image.asset("assets/images/friends.png")),
              Container(height: 30.h, child: Image.asset("assets/images/Inbox.png"))
            ],
          ),
        ),
        body: SafeArea(
            child: pageindex == 0
                ? homeListView(context)
                : pageindex == 1
                    ? championListview(context)
                    : pageindex == 2
                        ? dailyStepsListview(context)
                        : messagesListview(context)));
  }
}
