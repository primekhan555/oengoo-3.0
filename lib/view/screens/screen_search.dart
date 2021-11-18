import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/view/widgets/appbar_custom.dart';
import 'package:oengoo/view/widgets/custom_text.dart';
import 'package:oengoo/view/widgets/search_textfield.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(onNotificationsClicked: null, onSettingClick: null),
      body: Container(
        padding: EdgeInsets.only(left: 34.w, right: 34.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customText(text: 'Monday', fontSize: 12.sp, fontColor: AppColor.greenColor),
                  customText(text: 'Today', fontSize: 40.sp, fontColor: AppColor.blackOColor),
                  customText(
                      text: 'November 11,2021', fontSize: 12.sp, fontColor: AppColor.blackOColor),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            searchTextField(context),
            SizedBox(height: 70.h),
            Container(
              padding: EdgeInsets.only(bottom: 20.h),
              child: customText(text: 'You may search by', fontSize: 16.sp),
              decoration:
                  const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.green))),
            ),
            SizedBox(height: 30.h),
            customText(text: 'Challenge Code', fontSize: 16.sp),
            SizedBox(height: 30.h),
            customText(text: 'Oengoo ID', fontSize: 16.sp),
          ],
        ),
      ),
    );
  }
}
