import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:paniwala/appwidgets/appbutton.dart';
import 'package:paniwala/appwidgets/appnavigation.dart';
import 'package:paniwala/utils/appimagestext.dart';
import 'package:paniwala/utils/apptext.dart';
import 'package:paniwala/utils/paddingext.dart';
import 'package:paniwala/views/authviews/login_view.dart';

import '../../appwidgets/custom_comingsoon_dialog.dart';

class AuthOption extends StatelessWidget {
  const AuthOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 80.h,
              width: 120.w,
              child: Image.asset(ApplicationImages.applicationDropwater),
            ),
            Center(
                child: Text(
              ApplicationText.applicationName,
              style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5),
            )),
            10.ph,
            Center(
                child: Text(
              ApplicationText.applicationHydrationName,
              style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w500),
            )),
            Lottie.asset(ApplicationImages.applicationDropAnimation,
                height: 220.h),
            Center(
                child: Text(
              ApplicationText.applicationExpereince,
              style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            )),
            20.ph,
            ApplicationButton(
              onPressed: () {
                AppNavigation.navigateTo(context, const LoginView());
              },
              inputText: ApplicationText.applicationLoginAsVendor,
            ),
            5.ph,
            ApplicationButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const CustomAlertDialog(),
                );
              },
              inputText: ApplicationText.applicationLogininMarket,
            )
          ],
        ));
  }
}
