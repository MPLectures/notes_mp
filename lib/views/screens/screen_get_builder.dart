import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_mp/controller/controller_data_builder.dart';
import 'package:notes_mp/controller/data_controller.dart';

class ScreenGetBuilder extends StatelessWidget {
  BusinessLogic controller = Get.put(BusinessLogic());
  DataClass controllerOne = Get.put(DataClass());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.increment();
                  },
                  child: Text("Press"),
                ),
                GetBuilder<BusinessLogic>(
                  builder: (controller) {
                    return Text("${controller.counting}");
                  },
                ),
              ],
            ),
            GetBuilder<BusinessLogic>(
              builder: (controller) {
                return Switch(
                  value: controller.switchValue,
                  onChanged: (abc) {
                    controller.switchMethod(abc);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
