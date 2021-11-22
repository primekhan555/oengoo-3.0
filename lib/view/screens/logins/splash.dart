import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/config/image_paths.dart';

import 'fitness_challenge1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double? h;
  double? w;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const FitnessChallenge1()), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: h! / 5.50,
            width: double.infinity,
            decoration: const BoxDecoration(gradient: AppColor.appThemeColor),
            child: Center(
              child: Image.asset(
                ImagePaths.oengooWhite,
                width: 350.w,
              ),
            ),
          )
        ],
      ),
    );
  }
}
