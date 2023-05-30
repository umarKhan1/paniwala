

import 'package:flutter/material.dart';
import 'package:paniwala/utils/appimagestext.dart';

class AuthOption extends StatelessWidget {
  const AuthOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      
      body: Stack(children: [
        Container(height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(ApplicationImages.appImagesbackground, fit: BoxFit.cover,),
        )
      ],));
  }
}