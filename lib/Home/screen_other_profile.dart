import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/Globals/globalwidgets.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:oengoo/Home/screen_notification.dart';
import 'package:oengoo/Home/screen_settings.dart';
import 'package:oengoo/config/image_paths.dart';
import 'package:oengoo/config/sizes.dart';
import 'package:oengoo/view/widgets/appbar_custom.dart';
import 'package:oengoo/view/widgets/bottom_custom.dart';
import 'package:oengoo/view/widgets/custom_text.dart';
import 'package:oengoo/view/widgets/text_rich.dart';
import 'package:oengoo/view/widgets/widget_flutter_switch.dart';

class OtherProfileScreen extends StatefulWidget {
  final int state;
  const OtherProfileScreen({Key? key, this.state = 0}) : super(key: key);

  @override
  _OtherProfileScreenState createState() => _OtherProfileScreenState();
}

class _OtherProfileScreenState extends State<OtherProfileScreen> {
  bool isPrivateAccount = false;
  int state = 0;
  @override
  void initState() {
    state = widget.state;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: state == 0
          ? const CustomAppBar(
              onNotificationsClicked: null,
              onSettingClick: null,
              private: 1,
              state: 2,
            )
          : const CustomAppBar(onNotificationsClicked: null, onSettingClick: null),
      body: Container(
        padding: EdgeInsets.only(left: 34.w, right: 34.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Sizes.h30,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 102.h,
                  width: 102.h,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Image.asset(ImagePaths.maleImage),
                  ),
                  decoration:
                      const BoxDecoration(color: AppColor.greenColor, shape: BoxShape.circle),
                ),
                routineContainer(ImagePaths.stepsImage, "Steps", "3890", "per week"),
              ],
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: customText(
                    text: state == 0 ? 'Private Account' : 'Public Account', fontSize: 20.sp)),
            Sizes.h50,
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText(text: 'Oengoo ID', fontSize: 20.sp),
                    customText(text: '0932849', fontSize: 20.sp, fontColor: AppColor.greenColor),
                  ],
                ),
                Sizes.h15,
                Container(height: 1.h, width: 270.w, color: AppColor.greenColor),
                Sizes.h15,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText(text: 'Personal Information', fontSize: 20.sp),
                    customText(
                        text: 'Only Visible yourself',
                        fontSize: 10.sp,
                        fontColor: AppColor.lightGreyColor),
                  ],
                ),
                Sizes.h15,
                rowItem('Name', 'Wasil Khan'),
                rowItem('Location', 'Peshawar, Pakistan'),
                rowItem('Gender', 'Male'),
                rowItem('D.O.B', '10/04/1996'),
                rowItem('Weight', '53.4 kg'),
                rowItem('Height', '5ft 6in'),
                Sizes.h15,
                Container(height: 1.h, width: 270.w, color: AppColor.greenColor),
              ],
            ),
            if (state == 1)
              Expanded(
                  child: Container(
                alignment: Alignment.center,
                child: customButton(
                  onPress: () {},
                  text: 'Add Mate',
                ),
              )),
          ],
        ),
      ),
    );
  }

  rowItem(String title, String text, {int myState = 0, VoidCallback? onTap}) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            customText(text: title, fontSize: myState == 0 ? 16.sp : 20.sp),
            const Spacer(),
            customText(text: text, fontSize: 12.sp, fontColor: AppColor.lightGreen),
            if (state == 1) Sizes.w10,
            if (state == 1)
              Container(
                height: 16.h,
                width: 16.h,
                alignment: Alignment.center,
                child: RawMaterialButton(
                  onPressed: onTap,
                  child: Icon(
                    Icons.edit,
                    size: 20.h,
                  ),
                ),
              )
          ],
        ),
        Sizes.h10,
      ],
    );
  }
}
