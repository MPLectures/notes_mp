import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_mp/extensions/padding_extension.dart';
import 'package:notes_mp/helpers/constants.dart';
import 'package:notes_mp/views/layouts/bottom_navigation.dart';
import 'package:notes_mp/views/screens/screen_forgot_password.dart';
import 'package:notes_mp/views/screens/screen_register.dart';
import 'package:notes_mp/widgets/notes_button.dart';
import 'package:notes_mp/widgets/notes_textField.dart';
import 'package:sizer/sizer.dart';

class ScreenLogin extends StatefulWidget {
  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  bool isPasswordHidden = true;
  IconData suffixIcon = Icons.visibility_rounded;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: NotesColor.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Let\'s Login',
                      style: TextStyle(
                        fontSize: 23.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ).withOnlyPadding(top: 9.h, bottom: 3.sp),
                    Text(
                      'And notes your idea',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: NotesColor.greyColor1),
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
                        if (value !=
                            RegExp(
                                r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')) {
                          return "Please enter valid email";
                        } else if (value!.isEmpty) {
                          return "Please Enter email";
                        } else {
                          return null;
                        }
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
                      onIconTap: () {
                        setState(() {
                          isPasswordHidden = !isPasswordHidden;
                          isPasswordHidden == true
                              ? suffixIcon = Icons.visibility_rounded
                              : suffixIcon = Icons.visibility_off_rounded;
                        });
                      },
                      validator: (String? value) {
                        if (value!.length < 8) {
                          return "Password should be greater than 8 digits";
                        } else {
                          return null;
                        }
                      },
                      hintText: "* * * * * * ",
                      isIcon: true,
                      isHidden: isPasswordHidden,
                      icon: suffixIcon,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScreenForgotPassword()));
                      },
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          color: NotesColor.appColor,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    NotesButton(
                      onTap: () {
                        Get.to(BottomNavigation());
                        // if (_formKey.currentState!.validate()) {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) => BottomNavigation()));
                        // }
                      },
                      backgroundColor: NotesColor.appColor,
                      textColor: NotesColor.whiteColor,
                      isIcon: true,
                      text: "Login",
                    ).withOnlyPadding(top: 4.h),

                    // Container(
                    //   height: Get.height * 0.10,
                    //   width: Get.width,
                    //   color: Colors.yellow,
                    // ),
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
                            'Login with Google',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13.sp,
                            ),
                          ),
                        ],
                      ).withSymmetricPadding(vert: 7.sp),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have any account? ',
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
                            builder: (context) => ScreenRegister()));
                  },
                  child: Text(
                    'Register here',
                    style: TextStyle(
                      color: NotesColor.appColor,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ],
            ).withOnlyPadding(bottom: 5.sp)
          ],
        ).withSymmetricPadding(horizon: 15.sp),
      ),
    );
  }
}
