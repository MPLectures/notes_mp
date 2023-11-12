import 'package:flutter/material.dart';
import 'package:notes_mp/helpers/constants.dart';
import 'package:sizer/sizer.dart';

class NotesTextField extends StatelessWidget {
  String? hintText;
  bool? isHidden;
  VoidCallback? onIconTap;
  TextInputType? keyboardType;
  FormFieldValidator<String>? validator;
  TextEditingController? controller;
  bool isIcon;
  bool? isFilled;
  IconData? icon;
  int? maxLines;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 7.5.h,
      child: TextFormField(
        maxLines: maxLines ?? 1,
        controller: controller,
        obscuringCharacter: "*",
        validator: validator ?? null,
        keyboardType: keyboardType ?? TextInputType.name,
        obscureText: isHidden ?? false,
        decoration: InputDecoration(
          hintText: hintText ?? 'Enter Hint',
          filled: isFilled ?? false,
          fillColor: isFilled == true ? NotesColor.greyColor3 : null,
          hintStyle: TextStyle(
            fontSize: 9.sp,
            color: isFilled == false
                ? NotesColor.greyColor2
                : NotesColor.blackColor.withOpacity(0.5),
          ),
          contentPadding:
              EdgeInsets.symmetric(vertical: 5.sp, horizontal: 10.sp),
          suffixIcon: isIcon == true
              ? IconButton(
                  onPressed: onIconTap,
                  icon: Icon(
                    icon,
                    color: isFilled == false
                        ? NotesColor.greyColor2
                        : NotesColor.blackColor.withOpacity(0.5),
                    size: 14.sp,
                  ),
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderSide: isFilled == true
                ? BorderSide.none
                : BorderSide(
                    color: NotesColor.greyColor2,
                  ),
            borderRadius: BorderRadius.circular(8),
          ),
          border: OutlineInputBorder(
            borderSide: isFilled == true
                ? BorderSide.none
                : BorderSide(
              color: NotesColor.greyColor2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: isFilled == true
                ? BorderSide.none
                : BorderSide(
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
    this.onIconTap,
    this.keyboardType,
    this.validator,
    this.controller,
    required this.isIcon,
    this.icon,
    this.isFilled,
    this.maxLines,
  });
}
