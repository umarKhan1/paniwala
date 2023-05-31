
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class ApplicationButton extends StatelessWidget {
  VoidCallback onPressed;
  String? inputText;
   ApplicationButton({super.key, required this.onPressed, this.inputText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor:Theme.of(context).primaryColor ,minimumSize: Size(200.w, 40.h), ),
      onPressed: onPressed, child: Text(inputText!));
  }
}