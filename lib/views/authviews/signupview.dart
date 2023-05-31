
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paniwala/utils/paddingext.dart';

import '../../appwidgets/appbutton.dart';
import '../../appwidgets/apptextformfield.dart';
import '../../utils/appimagestext.dart';
import '../../utils/apptext.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: SizedBox(
                      height: 120.h,
                      width: 120.w,
                      child: Image.asset(
                        ApplicationImages.applicationDropwater,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  10.ph,
                  Center(
                      child: Text(
                    ApplicationText.applicationsignup,
                    style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5),
                  )),
                  80.ph,
                              
                  TextFieldWidget(
                      ApplicationText.applicationLoginPhoneText, "", "",
                      isPhone: true, textInputType: TextInputType.number),
                  20.ph,
                  TextFieldWidget(
                      ApplicationText.applicationLoginpasswordText, "", "",
                      isPass: true, textInputType: TextInputType.emailAddress),
             20.ph,
                  TextFieldWidget(
                      ApplicationText.applicationConfirmPasswordText, "", "",
                      isPass: true, textInputType: TextInputType.emailAddress),
                  30.ph,
                  ApplicationButton(
                    onPressed: () {},
                    inputText: "Signup",
                  ),
        
                ]),
          ),
        ),
      ),
    );

  }
}