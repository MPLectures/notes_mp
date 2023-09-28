import 'package:flutter/material.dart';
import 'package:notes_mp/extensions/padding_extension.dart';
import 'package:notes_mp/helpers/constants.dart';
import 'package:notes_mp/widgets/notes_button.dart';
import 'package:notes_mp/widgets/notes_textField.dart';
import 'package:sizer/sizer.dart';

class ScreenAddNotes extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _dataController = TextEditingController();

  List<Map<String, String>> notesList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: NotesColor.whiteColor,
      appBar: AppBar(
        backgroundColor: NotesColor.whiteColor,
        elevation: 0,
        title: Text(
          "Add Notes",
          style: TextStyle(
            fontFamily: 'Poppins',
            color: NotesColor.blackColor,
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 10.sp,
                    ),
                  ).withOnlyPadding(bottom: 5.sp),
                  NotesTextField(
                    isIcon: true,
                    isFilled: true,
                    icon: Icons.cancel_outlined,
                    controller: _nameController,
                    onIconTap: () {
                      _nameController.clear();
                    },
                    hintText: 'Muhammad Ali Hassan Sheikh',
                  ),
                  Text(
                    'Write your data here',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 10.sp,
                    ),
                  ).withOnlyPadding(bottom: 5.sp),
                  SizedBox(
                    height: 30.h,
                    child: NotesTextField(
                      isIcon: false,
                      isFilled: true,
                      hintText:
                          'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
                      maxLines: 15,
                      controller: _dataController,
                    ),
                  ),
                ],
              ),
            ),
            NotesButton(
              onTap: () {
                String name = _nameController.text;
                String data = _dataController.text;
                Map<String, String> note = {
                  'title': name,
                  'data': data,
                };
                notesList.add(note);
                _nameController.clear();
                _dataController.clear();

                Navigator.pop(context,notesList);
              },
              backgroundColor: NotesColor.appColor,
              textColor: NotesColor.whiteColor,
              text: "Save",
              borderRadius: 10,
            ).withOnlyPadding(bottom: 10.h)
          ],
        ).withSymmetricPadding(horizon: 15.sp),
      ),
    );
  }
}
