import 'package:flutter/material.dart';
import 'package:notes_mp/helpers/constants.dart';
import 'package:sizer/sizer.dart';

class NotesTextField extends StatelessWidget {
  String? hintText;
  bool? isHidden;
  VoidCallback? onTap;
  TextInputType? keyboardType;
  FormFieldValidator<String>? validator;
  TextEditingController? controller;
  bool isIcon;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 7.5.h,
      child: TextFormField(
        controller: controller,
        obscuringCharacter: "*",
        validator: validator ?? null,
        keyboardType: keyboardType ?? TextInputType.name,
        obscureText: isHidden ?? false,
        decoration: InputDecoration(
          hintText: hintText ?? 'Enter Hint',
          hintStyle: TextStyle(color: NotesColor.greyColor2),
          contentPadding:
              EdgeInsets.symmetric(vertical: 5.sp, horizontal: 10.sp),
          suffixIcon: isIcon == true
              ? IconButton(
                  onPressed: onTap,
                  icon: Icon(
                    icon,
                    color: NotesColor.greyColor2,
                  ),
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: NotesColor.greyColor2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: NotesColor.greyColor2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }

  NotesTextField({
    this.hintText,
    this.isHidden,
    this.onTap,
    this.keyboardType,
    this.validator,
    this.controller,
    required this.isIcon,
    this.icon,
  });
}
