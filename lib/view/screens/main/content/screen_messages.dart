import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/Home/screen_chat.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/config/decorations.dart';
import 'package:oengoo/config/image_paths.dart';
import 'package:oengoo/view/widgets/custom_text.dart';
import 'package:oengoo/view/widgets/search_textfield.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        height: 51.h,
        width: 51.h,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (ctx) => const ChatScreen()));
          },
          backgroundColor: AppColor.blackOColor,
          child: const Icon(Icons.edit_rounded),
        ),
      ),
      body: SingleChildScrollView(
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
              searchTextField(context),
              SizedBox(height: 30.h),
              ListView.builder(
                  itemCount: 8,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () => Navigator.push(
                          context, MaterialPageRoute(builder: (ctx) => const ChatScreen())),
                      child: stepsItem(imageUrl: ImagePaths.maleImage, username: "User Name"),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }

  stepsItem({required String imageUrl, required String username}) {
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(text: username, fontSize: 20.sp),
                SizedBox(height: 6.h),
                customText(text: 'Message Description', fontSize: 12.sp),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(text: 'Yesterday', fontSize: 12.sp),
                customText(text: '9:45', fontSize: 12.sp),
              ],
            ),
            SizedBox(width: 20.w),
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
