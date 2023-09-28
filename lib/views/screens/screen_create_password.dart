import 'package:flutter/material.dart';
import 'package:notes_mp/extensions/padding_extension.dart';
import 'package:notes_mp/helpers/constants.dart';
import 'package:notes_mp/views/screens/screen_login.dart';
import 'package:notes_mp/widgets/notes_button.dart';
import 'package:notes_mp/widgets/notes_textField.dart';
import 'package:sizer/sizer.dart';

class ScreenCreatePassword extends StatefulWidget {
  const ScreenCreatePassword({Key? key}) : super(key: key);

  @override
  State<ScreenCreatePassword> createState() => _ScreenCreatePasswordState();
}

class _ScreenCreatePasswordState extends State<ScreenCreatePassword> {
  bool isPasswordHidden = true;

  IconData suffixIcon = Icons.visibility_rounded;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: NotesColor.whiteColor,
      appBar: AppBar(
        backgroundColor: NotesColor.whiteColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ScreenLogin()));
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
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create a New Password ',
                    style: TextStyle(
                      fontSize: 23.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ).withOnlyPadding(bottom: 3.sp,top: 3.h),
                  Text(
                    'Your new password should be different from the previous password',
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: NotesColor.greyColor1,
                    ),
                  ),
                  Text(
                    'New Password',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ).withOnlyPadding(top: 2.5.h, bottom: 1.h),
                  NotesTextField(
                    onIconTap: () {
                      setState(() {
                        isPasswordHidden = !isPasswordHidden;

                        isPasswordHidden == true
                            ? suffixIcon = Icons.visibility_rounded
                            : suffixIcon = Icons.visibility_off_rounded;
                      });
                    },
                    validator: (String? value) {
                      return null;
                    },
                    hintText: "* * * * * * ",
                    isIcon: true,
                    isHidden: isPasswordHidden,
                    icon: suffixIcon,
                  ),
                  Text(
                    'Retype New Password',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ).withOnlyPadding(top: 2.5.h, bottom: 1.h),
                  NotesTextField(
                    onIconTap: () {
                      setState(() {
                        isPasswordHidden = !isPasswordHidden;

                        isPasswordHidden == true
                            ? suffixIcon = Icons.visibility_rounded
                            : suffixIcon = Icons.visibility_off_rounded;
                      });
                    },
                    validator: (String? value) {
                      return null;
                    },
                    hintText: "* * * * * * ",
                    isIcon: true,
                    isHidden: isPasswordHidden,
                    icon: suffixIcon,
                  ),

                ],
              ),
            ),
            NotesButton(
              onTap: () {},
              backgroundColor: NotesColor.appColor,
              text: "Create Password",
              textColor: NotesColor.whiteColor,
              borderRadius: 10,
            ).withOnlyPadding(bottom: 20.sp),
          ],
        ).withSymmetricPadding(horizon: 15.sp),
      ),
    );
  }
}
