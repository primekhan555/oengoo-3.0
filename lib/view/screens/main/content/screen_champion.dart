import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/config/decorations.dart';
import 'package:oengoo/config/image_paths.dart';
import 'package:oengoo/view/widgets/custom_text.dart';

class ChampionScreen extends StatefulWidget {
  const ChampionScreen({Key? key}) : super(key: key);

  @override
  State<ChampionScreen> createState() => _ChampionScreenState();
}

class _ChampionScreenState extends State<ChampionScreen> {
  int selectedIndex = 0;
  int selectedIndexRoutine = 0;
  List<String> nameList = ['Friend', 'City', 'Country', 'Gallery'];
  List<String> routineList = ['Daily', 'Weekly', 'Monthly', 'All Time'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 30.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              circleImageContainer(
                  imageUrl: ImagePaths.maleImage, medalUrl: ImagePaths.silverImage, state: 0),
              circleImageContainer(
                  imageUrl: ImagePaths.maleImage, medalUrl: ImagePaths.goldImage, state: 1),
              circleImageContainer(
                  imageUrl: ImagePaths.maleImage, medalUrl: ImagePaths.bronzeImage, state: 0),
            ],
          ),
          SizedBox(height: 20.h),
          customText(text: 'User Name', fontSize: 20.sp, fontWeight: FontWeight.bold),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customText(text: '500K', fontSize: 30.sp, fontWeight: FontWeight.bold),
              customText(
                  text: ' Steps',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  fontColor: AppColor.greenColor),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 2.h,
            width: 270.w,
            color: AppColor.greenColor,
          ),
          SizedBox(height: 20.h),
          Container(
            padding: EdgeInsets.only(left: 34.w, right: 34.w),
            child: Column(
              children: [
                Row(
                  children: [
                    selectionButton(nameList[0], onPress: () {
                      setState(() => selectedIndex = 0);
                    }, index: 0, selectedIndex: selectedIndex),
                    selectionButton(nameList[1], onPress: () {
                      setState(() => selectedIndex = 1);
                    }, index: 1, selectedIndex: selectedIndex),
                    selectionButton(nameList[2], onPress: () {
                      setState(() => selectedIndex = 2);
                    }, index: 2, selectedIndex: selectedIndex),
                    selectionButton(nameList[3], onPress: () {
                      setState(() => selectedIndex = 3);
                    }, index: 3, selectedIndex: selectedIndex),
                  ],
                ),
                SizedBox(height: 20.h),
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: AppColor.greenColor,
                      borderRadius: BorderRadius.circular(30.r),
                      boxShadow: Decorations.shadowButton),
                  child: Row(
                    children: [
                      selectionRoutineButton(routineList[0], onPress: () {
                        setState(() => selectedIndexRoutine = 0);
                      }, index: 0, selectedIndex: selectedIndexRoutine),
                      selectionRoutineButton(routineList[1], onPress: () {
                        setState(() => selectedIndexRoutine = 1);
                      }, index: 1, selectedIndex: selectedIndexRoutine),
                      selectionRoutineButton(routineList[2], onPress: () {
                        setState(() => selectedIndexRoutine = 2);
                      }, index: 2, selectedIndex: selectedIndexRoutine),
                      selectionRoutineButton(routineList[3], onPress: () {
                        setState(() => selectedIndexRoutine = 3);
                      }, index: 3, selectedIndex: selectedIndexRoutine),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  child: ListView.builder(
                      itemCount: 8,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return imageItem(
                            username: 'Wasil Khan',
                            imageUrl: ImagePaths.maleImage,
                            badgeNo: "4",
                            endNm: "00000");
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  selectionButton(String text,
      {required VoidCallback onPress, required int index, required selectedIndex}) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        child: InkWell(
          onTap: onPress,
          child: Container(
              height: 40.h,
              width: 78.w,
              alignment: Alignment.center,
              decoration: index == selectedIndex
                  ? BoxDecoration(
                      color: AppColor.whiteColor,
                      borderRadius: BorderRadius.circular(20.r),
                      border: Border.all(width: 2.h, color: AppColor.greenColor),
                      boxShadow: Decorations.shadowButton,
                    )
                  : null,
              child: customText(text: text, fontSize: 18.sp)),
        ),
      ),
    );
  }

  imageItem(
      {required String username,
      required String imageUrl,
      required String badgeNo,
      required String endNm}) {
    return SizedBox(
      height: 90.h,
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                alignment: AlignmentDirectional.topStart,
                children: [
                  Container(
                      height: 53.h,
                      width: 53.h,
                      decoration:
                          const BoxDecoration(shape: BoxShape.circle, color: AppColor.greenColor),
                      child: Image.asset(
                        imageUrl,
                        height: 79.h,
                      )),
                  Positioned(
                    left: 0,
                    child: Container(
                      height: 20.h,
                      width: 20.h,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: AppColor.blackOColor,
                        shape: BoxShape.circle,
                      ),
                      child: customText(
                          text: badgeNo, fontColor: AppColor.whiteColor, fontSize: 15.sp),
                    ),
                  )
                ],
              ),
              SizedBox(width: 33.w),
              Expanded(child: customText(text: username, fontSize: 20.sp)),
              customText(text: endNm, fontSize: 20.sp),
            ],
          ),
          SizedBox(height: 20.h),
          Container(
            height: 1.h,
            width: 270.w,
            color: AppColor.greenColor,
          ),
        ],
      ),
    );
  }

  selectionRoutineButton(String text,
      {required VoidCallback onPress, required int index, required selectedIndex}) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        child: InkWell(
          onTap: onPress,
          child: Container(
              height: 30.h,
              width: 74.w,
              alignment: Alignment.center,
              decoration: index == selectedIndex
                  ? BoxDecoration(
                      color: AppColor.blackOColor,
                      borderRadius: BorderRadius.circular(20.r),
                    )
                  : null,
              child: customText(text: text, fontSize: 15.sp, fontColor: Colors.white)),
        ),
      ),
    );
  }

  circleImageContainer({int state = 0, required String imageUrl, required String medalUrl}) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Container(
            height: state == 0 ? 79.21.h : 113.h,
            width: state == 0 ? 79.21.h : 113.h,
            decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColor.greenColor),
            child: Image.asset(
              imageUrl,
              height: 79.h,
            )),
        Positioned(
          right: 0,
          child: Image.asset(
            medalUrl,
            height: state == 0 ? 30.h : 40.h,
          ),
        )
      ],
    );
  }
}
