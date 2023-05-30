
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paniwala/utils/appimagestext.dart';

import '../appwidgets/appnavigation.dart';
import 'authviews/authoption.dart';
import 'authviews/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  Future<Timer> _splashTimer() async {
    return Timer(const Duration(seconds: 4), _onComplete);
  }
  void _onComplete() async {
    AppNavigation.navigateTo(context, const  AuthOption());
  }
  @override
  void initState() {
    super.initState();
    _splashTimer();
  }
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        body: SizedBox(
      child: Center(
        child: Container(
            width: 200.w,
            height: 250.h,
            decoration: const  BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ApplicationImages.appImages),
                    fit: BoxFit.cover)),
          ),
      ),
    ));
  }
}
