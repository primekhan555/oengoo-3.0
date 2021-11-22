import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/config/image_paths.dart';
import 'package:oengoo/config/sizes.dart';
import 'package:oengoo/view/widgets/appbar_custom.dart';
import 'package:oengoo/view/widgets/custom_text.dart';
import 'package:oengoo/view/widgets/search_textfield.dart';
import 'package:oengoo/view/widgets/widget_greenborder.dart';

class RouteScreen extends StatelessWidget {
  const RouteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        onNotificationsClicked: null,
        onSettingClick: null,
      ),
      body: Container(
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
            Expanded(
              child: ListView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  // physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return routeItem(
                      routeName: 'Golf Course Track',
                      imagePath: ImagePaths.routeImage,
                      awayDistance: '5.7 km away',
                      routeLength: '5.9',
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  routeItem({required routeName, required imagePath, String? awayDistance, String? routeLength}) {
    return Container(
      child: Column(
        children: [
          Sizes.h10,
          Row(
            children: [
              Container(
                height: 99.h,
                width: 85.w,
                child: Image.asset(imagePath),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText(text: routeName, fontSize: 16.sp),
                    Sizes.h4,
                    Row(
                      children: [
                        Icon(
                          Icons.place,
                          color: AppColor.greenColor,
                          size: 14.h,
                        ),
                        customText(text: awayDistance!, fontSize: 10.sp),
                      ],
                    ),
                    Sizes.h10,
                    customText(text: 'Length $routeLength', fontSize: 10.sp),
                  ],
                ),
              ),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 15,
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ],
          ),
          Sizes.h10,
          horizontalGreenLine(),
        ],
      ),
    );
  }
}
