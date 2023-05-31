import 'package:flutter/material.dart';

class ApplicationTheme{
 static final lightThemeData = ThemeData(
      primaryColor: const Color(0xff00afef),
      
      secondaryHeaderColor: Colors.white,
      textTheme: const TextTheme(
          displayLarge:
              TextStyle(color:  Color(0xff00afef), ),
          displayMedium:
              TextStyle(color: Colors.black,),
          displaySmall:
              TextStyle(color: Colors.black,)),
       toggleButtonsTheme:
          const ToggleButtonsThemeData(color: Color(0xffdc3b50)),
      iconTheme: const IconThemeData(color: Colors.black),
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffB7912B),
          ),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.black,
        elevation: 1,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
      ));


}