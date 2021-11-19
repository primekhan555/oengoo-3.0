import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/Home/screen_notification.dart';
import 'package:oengoo/Home/screen_profile.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/config/image_paths.dart';
import 'package:oengoo/view/widgets/button_circle.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int state;
  final IconData state2Icon;
  final int private;
  final VoidCallback? onSettingClick, onNotificationsClicked;
  const CustomAppBar(
      {Key? key,
      this.state = 0,
      this.private = 0,
      this.onSettingClick,
      this.onNotificationsClicked,
      this.state2Icon = Icons.settings_input_component})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 70.h,
        padding: EdgeInsets.only(left: 34.w, right: 34.w),
        width: double.infinity,
        alignment: Alignment.centerLeft,
        child: Row(children: [
          circleButton(
              onPress: () {
                Navigator.pop(context);
              },
              state: 1,
              iconData: Icons.arrow_back_ios),
          const Spacer(),
          if (state == 1)
            circleButton(
                onPress: onSettingClick!, state: 1, iconData: Icons.settings_input_component),
          SizedBox(width: 10.w),
          if (state == 1)
            circleButton(onPress: onNotificationsClicked!, state: 1, iconData: Icons.notifications),
          if (state == 2 && private == 0)
            circleButton(onPress: null, state: 1, iconData: state2Icon, color: Colors.black),
          if (state == 2 && private == 1)
            Image.asset(
              ImagePaths.flareSmallImage,
              height: 44.h,
            ),
        ]),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(70.h);
}
