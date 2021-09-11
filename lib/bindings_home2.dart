import 'package:flutter_animation/controller2.dart';
import 'package:get/get.dart';

class Home2Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ControllerHome2>(() {
      return ControllerHome2();
    });
  }
}