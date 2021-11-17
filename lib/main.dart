import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:oengoo/logins/fitness_challenge1.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/logins/otpscreen.dart';
import 'package:oengoo/logins/splash.dart';
import 'package:device_preview/device_preview.dart';
import 'package:oengoo/profileInfo/basic_info.dart';
import 'package:oengoo/profileInfo/gender_selection.dart';
import 'package:oengoo/profileInfo/profilepic.dart';
import 'package:oengoo/view/screens/main/screen_main.dart';

double? screenWidth, screenHeight;
void main() {
  runApp(MyApp());
  // runApp(DevicePreview(
  //   enabled: !kReleaseMode,
  //   builder: (context) => MyApp(), // Wrap your app
  // ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: () => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                splashColor: Colors.transparent, //t
                scaffoldBackgroundColor:
                    Colors.white, // he highlight effect when clicked is set to transparent
                highlightColor: Colors.transparent, //the diffusion effect when long
                primarySwatch: Colors.green,
                pageTransitionsTheme: const PageTransitionsTheme(builders: {
                  TargetPlatform.android: CupertinoPageTransitionsBuilder(),
                }),
              ),
              home: startWidget(),
            ));
  }

  startWidget() {
    return const MainScreen();
    // return ProfilePicture();
    // return const WhatsYourGender();

    // return const BasicInformation();

    // return const SplashScreen();
  }
}
