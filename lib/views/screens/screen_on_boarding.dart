import 'package:flutter/material.dart';
import 'package:notes_mp/extensions/padding_extension.dart';
import 'package:notes_mp/helpers/constants.dart';
import 'package:notes_mp/views/screens/screen_login.dart';
import 'package:notes_mp/widgets/notes_button.dart';
import 'package:sizer/sizer.dart';

class ScreenOnBoarding extends StatelessWidget {
  const ScreenOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NotesColor.appColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset('assets/images/Illustration.png')
                    .withAllPadding(10.sp),
                Text(
                  'Jot Down anything you want to achieve, today or in the future',
                  style: TextStyle(
                    color: NotesColor.whiteColor,
                    fontSize: 16.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            NotesButton(
              text: "Let’s Get Started",
              isIcon: true,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScreenLogin()));
              },
            ),
          ],
        ).withSymmetricPadding(horizon: 16.sp),
      ),
    );
  }
}
