import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/Home/curvednavigationbar.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 70.h,
            ),
            Container(
                child: Image.asset(
              "assets/images/getstartedlogo.png",
              height: 200.h,
            )),
            SizedBox(
              height: 90.h,
            ),
            Container(
              child: Image.asset(
                "assets/images/letsbegin.png",
                height: 100.h,
              ),
            ),
            SizedBox(
              height: 60.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BottomNavBar()));
              },
              child: Container(
                child: Image.asset(
                  "assets/images/getstarted.png",
                  height: 40.h,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
