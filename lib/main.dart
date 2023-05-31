import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paniwala/providers/dropdown_providers.dart';
import 'package:paniwala/utils/apptext.dart';
import 'package:paniwala/utils/appthemes.dart';
import 'package:provider/provider.dart';
import './views/splashview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  
    return MultiProvider(
      providers:[
          ChangeNotifierProvider(create: (context) => DropDownProviders()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
         builder: (context, widget) {
          ScreenUtil.init(context,
             designSize: const Size(360, 712) );
          return widget!;
        },
        title: ApplicationText.applicationName,
        theme: ApplicationTheme.lightThemeData,
        home: const SplashView(),
      ),
    );
  }
}

