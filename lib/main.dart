import 'package:flutter/material.dart';
import 'package:notes_mp/views/screens/screen_getx.dart';
import 'package:notes_mp/views/screens/screen_on_boarding.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: ScreenOnBoarding(),
      ),
    );
  }
}
