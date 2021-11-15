import 'package:flutter/material.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/profileInfo/profilepicUploaded.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({Key? key}) : super(key: key);

  @override
  _ProfilePictureState createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Builder(
          builder: (context) => SafeArea(
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
                "Upload Profile Picture",
                style: textStyle("nunito", 24.sp, AppColor.blackColor),
              ),
              SizedBox(
                height: 80.h,
              ),
              Container(
                child: Stack(
                  children: [
                    Container(
                      height: 170.h,
                      width: 170.w,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset("assets/images/dummyprofile.png"),
                    ),
                    Positioned(
                      top: 140,
                      left: 140,
                      child: InkWell(
                        onTap: () {
                          Scaffold.of(context).showBottomSheet((context) {
                            return Container(
                              height: 200.h,
                              width: double.infinity,
                              decoration: BoxDecoration(gradient: AppColor.appThemeColor),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 3, right: 25),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Container(
                                            child: Image.asset(
                                              "assets/images/cross.png",
                                              height: 40.h,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Image.asset(
                                            "assets/images/uploadcampic.png",
                                            height: 40.h,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text(
                                          "Take New Profile Picture",
                                          style: textStyle("nunito", 17.sp, AppColor.blackColor),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Image.asset(
                                            "assets/images/gallery.png",
                                            height: 40.h,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text(
                                          "Select Profile Picture",
                                          style: textStyle("nunito", 17.sp, AppColor.blackColor),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          });
                        },
                        child: Container(
                          child: Image.asset(
                            "assets/images/camera.png",
                            height: 45.h,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 120.h,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => ProfilePicUploaded()));
                      },
                      child: Container(
                        child: Image.asset(
                          "assets/images/skip.png",
                          height: 45.h,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ]))
          ])),
        ));
  }
}
