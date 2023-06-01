import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paniwala/appwidgets/appbutton.dart';
import 'package:paniwala/appwidgets/appnavigation.dart';
import 'package:paniwala/providers/dropdown_providers.dart';
import 'package:paniwala/utils/appimagestext.dart';
import 'package:paniwala/utils/paddingext.dart';
import 'package:paniwala/views/authviews/forgotpassword.dart';
import 'package:paniwala/views/authviews/signupview.dart';
import 'package:provider/provider.dart';

import '../../appwidgets/apptextformfield.dart';
import '../../utils/apptext.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                    ApplicationText.applicationLoginText,
                    style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5),
                  )),
                  80.ph,
                  Container(
                      height: 45.h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(width: 1, color: Colors.grey)),
                      child: Consumer<DropDownProviders>(
                        builder: (context, dropdownprovidervalue, child) {
                          return DropdownButtonHideUnderline(
                            child: ButtonTheme(
                              alignedDropdown: true,
                              child: DropdownButton(
                                value:
                                    dropdownprovidervalue.dropdownInitialValue,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: dropdownprovidervalue.items
                                    .map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                onChanged: (v) {
                                  dropdownprovidervalue.dropdownvalueChange(
                                      getvalue: v);

                                  // setState(() {
                                  //   dropdownvalue = newValue!; m
                                  // });
                                },
                              ),
                            ),
                          );
                        },
                      )),
                  20.ph,
                  TextFieldWidget(
                      ApplicationText.applicationLoginPhoneText, "", "",
                      isPhone: true, textInputType: TextInputType.number),
                  20.ph,
                  TextFieldWidget(
                      ApplicationText.applicationLoginpasswordText, "", "",
                      isPass: true, textInputType: TextInputType.emailAddress),
                  20.ph,
                  InkWell(
                    onTap: (){
                      AppNavigation.navigateTo(context, const ForgotPasswordView());
                    },
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          ApplicationText.applicationForgotPasswordText,
                          style: TextStyle(
                              fontSize: 13.sp, fontWeight: FontWeight.w800),
                        )),
                  ),
                  30.ph,
                  ApplicationButton(
                    onPressed: () {},
                    inputText: "Login",
                  ),
                  12.ph,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ApplicationText.applicationdonthaveaccount,
                        style: TextStyle(
                            fontSize: 13.sp, fontWeight: FontWeight.w700),
                      ),
                      5.pw,
                      InkWell(
                        onTap: (){
                          AppNavigation.navigateTo(context,const  SignupView());
                        },
                        child: Text(
                          ApplicationText.applicationsignup,
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w800,
                              color: Theme.of(context)
                                  .textTheme
                                  .displayLarge
                                  ?.color),
                        ),
                      ),
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
