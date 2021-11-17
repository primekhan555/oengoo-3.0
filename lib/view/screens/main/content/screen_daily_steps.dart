import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/config/decorations.dart';
import 'package:oengoo/config/image_paths.dart';
import 'package:oengoo/view/widgets/custom_text.dart';
import 'package:oengoo/view/widgets/search_textfield.dart';

class DailyStepsScreen extends StatelessWidget {
  const DailyStepsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 34.w, right: 34.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(text: 'Monday', fontSize: 12.sp, fontColor: AppColor.greenColor),
                customText(text: 'Today', fontSize: 40.sp, fontColor: AppColor.blackOColor),
                customText(
                    text: 'November 11,2021', fontSize: 12.sp, fontColor: AppColor.blackOColor),
              ],
            ),
            SizedBox(height: 30.h),
            searchTextField(),
            SizedBox(height: 30.h),
            ListView.builder(
                itemCount: 8,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return stepsItem(imageUrl: ImagePaths.maleImage, steps: "2897");
                }),
          ],
        ),
      ),
    );
  }

  stepsItem({required String imageUrl, required String steps}) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        Row(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Container(
                  width: 60.w,
                  alignment: Alignment.centerLeft,
                  child: Container(
                      height: 53.h,
                      width: 53.h,
                      decoration:
                          const BoxDecoration(shape: BoxShape.circle, color: AppColor.greenColor),
                      child: Image.asset(
                        imageUrl,
                        height: 79.h,
                      )),
                ),
                Positioned(
                  left: 30.w,
                  bottom: 0.h,
                  child: Stack(
                    children: [
                      Container(
                        height: 20.h,
                        width: 40.h,
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 20.h,
                          width: 20.h,
                          decoration: BoxDecoration(
                            color: AppColor.blackOColor,
                            shape: BoxShape.circle,
                            boxShadow: Decorations.shadowButton,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                        child: Image.asset(
                          ImagePaths.fireImage,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(width: 20.w),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        customText(text: steps, fontSize: 20.sp),
                        customText(text: 'Steps', fontSize: 10.sp, fontColor: AppColor.greenColor),
                      ],
                    ),
                    Image.asset(
                      ImagePaths.multiStepsImage,
                      width: 230.w,
                    ),
                  ],
                ),
                SizedBox(width: 20.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText(text: '5K', fontSize: 20.sp),
                    customText(text: 'Steps', fontSize: 10.sp, fontColor: AppColor.greenColor),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Container(
          height: 1.h,
          width: 270.w,
          color: AppColor.greenColor,
        ),
      ],
    );
  }
}
