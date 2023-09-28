import 'package:flutter/material.dart';
import 'package:notes_mp/extensions/padding_extension.dart';
import 'package:notes_mp/helpers/constants.dart';
import 'package:sizer/sizer.dart';

class ListItem extends StatelessWidget {
  ListItem({Key? key, required this.name, required this.data})
      : super(key: key);

  final String name;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: NotesColor.appColor, borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 7.sp, horizontal: 10.sp),
        leading: CircleAvatar(
          backgroundColor: NotesColor.darkAppColor,
          child: Image.asset('assets/images/light-bulb.png').withAllPadding(7.sp),
        ),
        title: Text(
          name,
          style: TextStyle(
              color: NotesColor.whiteColor,
              fontSize: 13.sp,
              fontWeight: FontWeight.w700,
              fontFamily: 'Poppins'),
        ),
        subtitle: Text(
          data,
          style: TextStyle(
            color: NotesColor.greyColor4,
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
