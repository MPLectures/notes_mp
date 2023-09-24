import 'package:flutter/material.dart';
import 'package:notes_mp/helpers/constants.dart';
import 'package:sizer/sizer.dart';

class NotesButton extends StatelessWidget {
  Color? backgroundColor;
  Color? textColor;
  String? text;
  IconData? icon;
  bool? isIcon = true;
  VoidCallback onTap;
  double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 6.5.h,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? NotesColor.whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 100),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(),
            Text(
              text ?? "Button",
              style: TextStyle(
                color: textColor ?? NotesColor.appColor,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                fontSize: 13.sp,
              ),
            ),
            isIcon == true
                ? Icon(
                    Icons.arrow_forward,
                    color: textColor ?? NotesColor.appColor,
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }

  NotesButton({
    this.backgroundColor,
    this.textColor,
    this.text,
    this.icon,
    this.isIcon,
    required this.onTap,
    this.borderRadius,
  });
}
