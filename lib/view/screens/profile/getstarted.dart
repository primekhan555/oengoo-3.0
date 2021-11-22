import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/view/screens/main/screen_main.dart';
import 'package:oengoo/config/image_paths.dart';
import 'package:oengoo/view/widgets/bottom_custom.dart';
import 'package:oengoo/view/widgets/custom_text.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 60.w, right: 60.w),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                height: 265.74.h,
                width: 282.58.w,
                alignment: Alignment.center,
                child: Image.asset(ImagePaths.getStartedImage),
              ),
            ),
            Expanded(
                child: Container(
              child: customText(
                  text: "Let's begin our first step towards fitness!",
                  fontSize: 35.sp,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold),
            )),
            Expanded(
              child: Container(
                alignment: Alignment.topCenter,
                child: customButton(
                  onPress: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (ctx) => const MainScreen()));
                  },
                  text: "Get Started",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
