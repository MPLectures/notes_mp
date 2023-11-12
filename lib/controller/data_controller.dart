import 'package:get/get.dart';

class DataClass extends GetxController {
  Rx<int> count = 0.obs;
  Rx<bool> switchValue = false.obs;

  // get countValue {
  //   return _count;
  // }

  // set countValue(xyz){
  //   _count = xyz;
  // }


  incr(){
    count.value++;
  }

}
