import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:paniwala/appwidgets/appbutton.dart';
import 'package:paniwala/utils/appimagestext.dart';
import 'package:paniwala/utils/apptext.dart';
import 'package:paniwala/utils/paddingext.dart';

class CustomAlertDialog extends StatefulWidget {
  const CustomAlertDialog({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomAlertDialogState createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _initScaleAnimation();
  }

  _initScaleAnimation() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..addListener(() => setState(() {}));

    animation = Tween<double>(begin: 0, end: 1.0).animate(controller);

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: animation,
      alignment: Alignment.topCenter, // use different alignment
      child: AlertDialog(
        backgroundColor: Colors.white,
        title: Lottie.asset(ApplicationImages.applicationCommingSoonAnimation,
            height: 200.h, width: 200.w, fit: BoxFit.contain),
        actions: [
          Center(
              child: Text(
            ApplicationText.applicationCommingSoon,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17.sp,
                letterSpacing: 0.2),
            textAlign: TextAlign.center,
          )),
          10.ph,
          Center(
              child: Text(
            ApplicationText.applicationCommingSoonBigText,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12.sp,
            ),
            textAlign: TextAlign.center,
          )),
          10.ph,
          Center(
              child: ApplicationButton(
            onPressed: () {
// controller.animateBack(0.0,duration: const Duration(seconds: 1) );
              Navigator.of(context, rootNavigator: true).pop('dialog');
            },
            inputText: "closed",
          ))
        ],
      ),
    );
  }
}
