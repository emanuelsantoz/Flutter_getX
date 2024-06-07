import 'package:get/get.dart';

class HomeController extends GetxController {
   
  String name = 'Emanuel';
  int index = 0;

  void contador(){
    index++;
    update();
  }
}