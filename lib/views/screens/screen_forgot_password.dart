import 'package:flutter/material.dart';
import 'package:notes_mp/extensions/padding_extension.dart';
import 'package:notes_mp/helpers/constants.dart';
import 'package:notes_mp/views/screens/screen_create_password.dart';
import 'package:notes_mp/widgets/notes_button.dart';
import 'package:notes_mp/widgets/notes_textField.dart';
import 'package:sizer/sizer.dart';

class ScreenForgotPassword extends StatelessWidget {
  const ScreenForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NotesColor.whiteColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: NotesColor.whiteColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: NotesColor.appColor,
            size: 13.sp,
          ),
        ),
        title: Text(
          "Back to Login",
          style: TextStyle(
              color: NotesColor.appColor,
              fontWeight: FontWeight.w500,
              fontSize: 13.sp,
              fontFamily: 'Poppins'),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/Illustration.png').withAllPadding(15.sp),
            Text(
              'Forgot Password',
              style: TextStyle(
                fontSize: 23.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ).withOnlyPadding(bottom: 3.sp),
            Text(
              'Insert your email address to receive a code for creating a new password',
              style: TextStyle(
                fontSize: 13.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: NotesColor.greyColor1,
              ),
            ),
            Text(
              'Email Address',
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ).withOnlyPadding(top: 2.5.h, bottom: 1.h),
            NotesTextField(
              keyboardType: TextInputType.emailAddress,
              validator: (String? value) {
                return null;
              },
              hintText: "Example: johndoe@gmail.com",
              isIcon: false,
            ),
            NotesButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ScreenCreatePassword()));
              },
              backgroundColor: NotesColor.appColor,
              textColor: NotesColor.whiteColor,
              isIcon: false,
              text: "Send Code",
            ).withOnlyPadding(top: 4.h),
          ],
        ).withSymmetricPadding(horizon: 15.sp),
      ),
    );
  }
}
