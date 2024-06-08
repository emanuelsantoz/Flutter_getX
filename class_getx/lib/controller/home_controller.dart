import 'package:get/get.dart';

class HomeController extends GetxController {
  String name = '';
  RxInt index = 0.obs;

  void contador() {
    index++;
  }

  void displayNome() {
    name = 'Emanuel';
    update();
  }
}
