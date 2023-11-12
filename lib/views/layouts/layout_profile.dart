import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share/share.dart';

class LayoutProfile extends StatelessWidget {
  Rx<int> number = 0.obs;
  bool switchValue = true;
  Color boxColor = Colors.red;
  bool color = false;

  @override
  Widget build(BuildContext context) {
    print("BUild rebuild");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // ElevatedButton(
            //   onPressed: () {
            //     _openShareScreen(context);
            //     // Get.bottomSheet(
            //     //   Container(
            //     //     color: Colors.white,
            //     //     child: GestureDetector(
            //     //       onTap: () {
            //     //         Get.back();
            //     //       },
            //     //       child: Icon(
            //     //         Icons.cancel,
            //     //         color: Colors.red,
            //     //       ),
            //     //     ),
            //     //   ),
            //     // );
            //   },
            //   child: Text("Show bottom Sheet"),
            // ),
            Obx(() {
              print("Text rebuild");
              return Text("${number.value}");
            }),
            ElevatedButton(
              onPressed: () {

                number.value++;
              },
              child: Text("Press to increment"),
            ),
            Switch(
              value: switchValue,
              onChanged: (value) {
                switchValue = value;
              },
            ),
            Container(
              height: 100,
              width: 100,
              color: color == false ? boxColor = Colors.blue : Colors.red,
            ),
            ElevatedButton(
              onPressed: () {
                print("123");

                color = !color;
              },
              child: Text("Blue"),
            ),
          ],
        ),
      ),
    );
  }

  void _openShareScreen(BuildContext context) {
    Share.share("Hello");
  }
}
