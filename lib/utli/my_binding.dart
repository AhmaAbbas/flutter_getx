
import 'package:flutter_getx/controller/controller.dart';
import 'package:get/get.dart';

class My_Binding extends Bindings{
  @override
  void dependencies() {

    Get.put(Home_Controllergetx(),permanent: true);
  }

}