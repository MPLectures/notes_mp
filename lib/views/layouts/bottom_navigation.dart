import 'package:flutter/material.dart';
import 'package:notes_mp/helpers/constants.dart';
import 'package:notes_mp/views/layouts/layout_home.dart';
import 'package:notes_mp/views/layouts/layout_profile.dart';
import 'package:notes_mp/views/screens/screen_add_notes.dart';
import 'package:sizer/sizer.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentTab = 0;
  List screens = [
    LayoutHome(),
    LayoutProfile(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NotesColor.whiteColor,
      body: screens[currentTab],
      floatingActionButton: FloatingActionButton(
        backgroundColor: NotesColor.appColor,
        child: Icon(
          Icons.add,
          size: 25.sp,
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ScreenAddNotes()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      color: currentTab == 0
                          ? NotesColor.appColor
                          : NotesColor.greyColor1,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: currentTab == 0
                            ? NotesColor.appColor
                            : NotesColor.greyColor1,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.account_circle_sharp,
                      color: currentTab == 1
                          ? NotesColor.appColor
                          : NotesColor.greyColor1,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                        color: currentTab == 1
                            ? NotesColor.appColor
                            : NotesColor.greyColor1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
