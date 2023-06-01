
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paniwala/appwidgets/appbutton.dart';
import 'package:paniwala/appwidgets/appnavigation.dart';
import 'package:paniwala/utils/appimagestext.dart';
import 'package:paniwala/utils/paddingext.dart';

import '../../appwidgets/apptextformfield.dart';
import '../../utils/apptext.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SingleChildScrollView(
        physics:const  NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
      50.ph,
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(onPressed: (){
      AppNavigation.navigatorPop(context);
      
              }, icon: const Icon(Icons.arrow_back_ios), )),
            50.ph,
          Center(
            child: SizedBox(height: 100.h, width: 100.w,
            child: Image.asset(ApplicationImages.applicationForgotLock, fit: BoxFit.cover,),
            ),
          ),
          20.ph,
        Text(
                            ApplicationText.applicationForgotPasswordText,
                            style: TextStyle(
                                fontSize: 25.sp, fontWeight: FontWeight.w700),
                          ),
                          10.ph,
                            SizedBox(
                              width: 280.w,
                              child: Text(
                              ApplicationText.applicationemailaccount,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w400),
                                                  ),
                            ),
       40.ph,
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:18.0),
                              child: TextFieldWidget(
                             
                                                    ApplicationText.applicationLoginPhoneText, "", "",
                                                    isPhone: true, textInputType: TextInputType.number),
                            ),
      80.ph,
       
                          ApplicationButton(onPressed: (){}, inputText: ApplicationText.applicationSend,)
        ],),
      ),
    ) ,);
  }
}