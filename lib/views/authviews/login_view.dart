import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paniwala/utils/appimagestext.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Center(
            child: SizedBox(
              height: 190.h,
              width: 190.w,
          
              child: Image.asset(ApplicationImages.appImages, fit: BoxFit.cover,),),
          )
      
        ]),
      ),
    );
  }
}