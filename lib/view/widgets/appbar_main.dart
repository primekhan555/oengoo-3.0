import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oengoo/view/screens/screen_notification.dart';
import 'package:oengoo/view/screens/screen_profile.dart';
import 'package:oengoo/config/colors.dart';
import 'package:oengoo/config/image_paths.dart';
import 'package:oengoo/view/widgets/button_circle.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 71.h,
        padding: EdgeInsets.only(left: 34.w, right: 34.w),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const UserProfile()));
              },
              child: Container(
                  height: 53.h,
                  width: 53.h,
                  decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, top: 2),
                    child: Image.asset(
                      ImagePaths.maleImage,
                      fit: BoxFit.fill,
                    ),
                  )),
            ),
            circleButton(
                onPress: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => NotificationScreen()));
                },
                state: 1,
                iconData: Icons.notifications),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(70.h);
}
