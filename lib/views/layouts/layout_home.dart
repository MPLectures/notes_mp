import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_mp/extensions/padding_extension.dart';
import 'package:notes_mp/helpers/constants.dart';
import 'package:notes_mp/views/layouts/list_item.dart';
import 'package:notes_mp/views/screens/screen_add_notes.dart';
import 'package:sizer/sizer.dart';

class LayoutHome extends StatefulWidget {
  @override
  _LayoutHomeState createState() => _LayoutHomeState();
}

class _LayoutHomeState extends State<LayoutHome> {
  List<Map<String, String>> notesList = [];

  @override
  Widget build(BuildContext context) {
    return notesList.isNotEmpty
        ? Scaffold(
            appBar: AppBar(
              backgroundColor: NotesColor.whiteColor,
              elevation: 0,
              title: Text(
                'Home',
                style: TextStyle(
                  color: NotesColor.blackColor,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp,
                ),
              ),
              centerTitle: true,
            ),
            backgroundColor: NotesColor.whiteColor,
            body: ListView.separated(
              itemCount: notesList.length,
              itemBuilder: (context, index) => ListItem(
                name: notesList[index]['title'] ?? '',
                data: notesList[index]['data'] ?? '',
              ),
              separatorBuilder: (context, index) => SizedBox(
                height: 3.sp,
              ),
            ).withSymmetricPadding(horizon: 15.sp))
        : Scaffold(
            backgroundColor: NotesColor.whiteColor,
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/Illustration_home.png')
                      .withOnlyPadding(bottom: 15.sp),
                  Text(
                    'Start Your Journey',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ).withOnlyPadding(bottom: 10.sp),
                  Text(
                    'Every big step starts with a small step. Take notes of your first idea and start your journey!',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScreenAddNotes(),
                        ),
                      );
                      if (result != null &&
                          result is List<Map<String, String>>) {
                        setState(() {
                          notesList = result;
                        });
                      }
                    },
                    child: Text('Add Note'),
                  ).withAllPadding(20.sp),
                  ElevatedButton(
                      onPressed: () {
                        Get.snackbar(
                          "Alert", "You press button",
                          titleText: Text("Alert 2"),
                          messageText: Text("You pressed button"),
                          snackPosition: SnackPosition.BOTTOM,
                          // colorText: Colors.red
                          backgroundColor: Colors.purple,
                          borderRadius: 10,
                          // maxWidth: 200
                          icon: Icon(
                            Icons.info_outlined,
                            color: Colors.red,
                          ),
                          mainButton: TextButton(
                              onPressed: () {}, child: Text("Hello")),
                        );
                      },
                      child: Text("Show Snackbar")),
                  ElevatedButton(
                      onPressed: () {
                        Get.defaultDialog(
                          title: "Hello",
                          // middleText: "ytvbnjytcvbjkvtrcyvgh\njvyvyuvytvtfytv",
                          content: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.message),
                              Text("ytvbnjytcvbjkvtrcyvgh\njvyvyuvytvtfytv"),
                            ],
                          ),
                          // textCancel: "No",
                          // textConfirm: "Yes",
                          //onConfirm: () {
                          //Get.back();
                          //},
                          //onCancel: (){},

                          // confirm: Text("YUP"),
                          // cancel: Text("NOPE"),


                          actions: [
                            ElevatedButton(onPressed: (){}, child: Text("No")),
                            ElevatedButton(onPressed: (){}, child: Text("Yes")),
                          ]
                        );
                      },
                      child: Text("Show Dialog")),
                ],
              ).withSymmetricPadding(horizon: 15.w),
            ),
          );
  }
}
