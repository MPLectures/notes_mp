import 'package:flutter/material.dart';
import 'package:notes_mp/extensions/padding_extension.dart';
import 'package:notes_mp/helpers/constants.dart';
import 'package:notes_mp/views/screens/screen_login.dart';
import 'package:notes_mp/widgets/notes_button.dart';
import 'package:notes_mp/widgets/notes_textField.dart';
import 'package:sizer/sizer.dart';

class ScreenRegister extends StatefulWidget {
  @override
  State<ScreenRegister> createState() => _ScreenRegisterState();
}

class _ScreenRegisterState extends State<ScreenRegister> {
  bool isPasswordHidden = true;

  IconData suffixIcon = Icons.visibility_rounded;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NotesColor.whiteColor,
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
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Register',
                style: TextStyle(
                  fontSize: 23.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ).withOnlyPadding(top: 2.h, bottom: 3.sp),
              Text(
                'And start taking notes',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: NotesColor.greyColor1),
              ),
              Text(
                'Full Name',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ).withOnlyPadding(top: 2.5.h, bottom: 1.h),
              NotesTextField(
                keyboardType: TextInputType.name,
                validator: (String? value) {
                  return null;
                },
                hintText: "Example: John Doe",
                isIcon: false,
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
              Text(
                'Password',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ).withOnlyPadding(top: 2.5.h, bottom: 1.h),
              NotesTextField(
                onTap: () {
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
                'Retype Password',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ).withOnlyPadding(top: 2.5.h, bottom: 1.h),
              NotesTextField(
                onTap: () {
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
              NotesButton(
                onTap: () {},
                backgroundColor: NotesColor.appColor,
                textColor: NotesColor.whiteColor,
                isIcon: true,
                text: "Register",
              ).withOnlyPadding(top: 4.h),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      indent: 5.w,
                      endIndent: 5.w,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Or",
                    style: TextStyle(color: NotesColor.greyColor1),
                  ),
                  Expanded(
                    child: Divider(
                      indent: 5.w,
                      endIndent: 5.w,
                      color: Colors.black,
                    ),
                  ),
                ],
              ).withSymmetricPadding(vert: 3.h),
              Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: NotesColor.greyColor2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/google.png'),
                    SizedBox(
                      width: 20.sp,
                    ),
                    Text(
                      'Register with Google',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                      ),
                    ),
                  ],
                ).withSymmetricPadding(vert: 7.sp),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(
                      color: NotesColor.appColor,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScreenLogin()));
                    },
                    child: Text(
                      'Login here',
                      style: TextStyle(
                        color: NotesColor.appColor,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ],
              ).withOnlyPadding(top: 5.h,bottom: 1.h),
            ],
          ).withSymmetricPadding(horizon: 15.sp),
        ),
      ),
    );
  }
}
