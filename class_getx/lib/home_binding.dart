import 'package:class_getx/controller/home_controller.dart';
import 'package:class_getx/controller/second_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => SecondController());
  }
}
