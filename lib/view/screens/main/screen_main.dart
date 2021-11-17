import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:oengoo/view/screens/main/content/screen_champion.dart';
import 'package:oengoo/view/screens/main/content/screen_home.dart';
import 'package:oengoo/config/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/view/screens/main/content/screen_messages.dart';
import 'package:oengoo/view/widgets/appbar_main.dart';

import 'content/screen_daily_steps.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;
  List<Widget> widgetList = [
    const HomeScreen(),
    const ChampionScreen(),
    const DailyStepsScreen(),
    const MessagesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      bottomNavigationBar: SizedBox(
        height: 75.h,
        child: CurvedNavigationBar(
          color: AppColor.greenColor,
          buttonBackgroundColor: AppColor.blackColor,
          backgroundColor: AppColor.whiteColor,
          index: pageIndex,
          height: 75.h,
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
          },
          items: <Widget>[
            SizedBox(height: 30.h, child: Image.asset("assets/images/homeicon.png")),
            SizedBox(height: 30.h, child: Image.asset("assets/images/crown.png")),
            SizedBox(height: 30.h, child: Image.asset("assets/images/friends.png")),
            SizedBox(height: 30.h, child: Image.asset("assets/images/Inbox.png"))
          ],
        ),
      ),
      body: SafeArea(child: widgetList[pageIndex]),
    );
  }
}
