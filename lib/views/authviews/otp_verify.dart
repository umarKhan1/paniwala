

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:paniwala/appwidgets/appbutton.dart';
import 'package:paniwala/appwidgets/appnavigation.dart';


import 'package:paniwala/utils/appimagestext.dart';
import 'package:paniwala/utils/paddingext.dart';
import 'package:paniwala/views/authviews/login_view.dart';

import '../../utils/apptext.dart';

class OtpVerfication extends StatelessWidget {
  const OtpVerfication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          20.ph,
        Center(child: Lottie.asset(ApplicationImages.applicationotpAnimation, height: 250.h, width: 250.w, fit: BoxFit.cover)),
    Text(
                      ApplicationText. applicationOtpVerfication,
        
                      style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5),
                    ),
                    10.ph,
     Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
    Text(
                      ApplicationText. applicationEnterOtp,
        
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5),
                    ),
    Text(
                      "+971123455665",
        
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5),
                    ),
    
     ],),
       70.ph,
    
       Center(
       child: SizedBox(
       width: 300.w,
         child: OTPTextField(
         length: 4,
         width: MediaQuery.of(context).size.width,
         fieldWidth: 30.w,
         style: TextStyle(
          fontSize: 17.sp, 
          fontWeight: FontWeight.w700
         ),
         isDense: true,
         textFieldAlignment: MainAxisAlignment.spaceEvenly,
         fieldStyle: FieldStyle.underline,
         onCompleted: (pin) {
          //print("Completed: " + pin);
         },
       ),
       ),
       ),
    
    
    20.ph,
     Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
    Text(
                      ApplicationText.applicationdidntrecieved,
        
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5),
                    ),
    5.pw,
    Text(
                        ApplicationText.applicationresend ,
        
                      style: TextStyle(
                        color: Theme.of(context).textTheme.displayLarge?.color,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5),
                    ),
    
     ],),
    80.ph,
    ApplicationButton(onPressed: (){
AppNavigation.navigateTo(context,const  LoginView());

    }, inputText: ApplicationText.applicationverfiy,)
      ],),
    ),);
  }
}