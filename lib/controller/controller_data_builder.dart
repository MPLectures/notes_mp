import 'package:get/get.dart';

class BusinessLogic extends GetxController{
  // Rx<int> abc = 0.obs;
  // Rx<bool> switchValue= false.obs;


  int counting = 0;
  bool switchValue = false;

  increment(){
    counting++;
    update();
  }


  switchMethod(bool value){
    switchValue = value;
    update();
  }



}