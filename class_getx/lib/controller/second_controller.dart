import 'package:get/get.dart';

class SecondController extends GetxController {
  String name = '';
  RxInt index = 0.obs;

  void contador() {
    index++;
  }

  void displayNome() {
    name = 'Emanuel';
    update();
  }

  @override
  void onInit(){
    // Quando abre a página
    print("On Init!");
    super.onInit();
  }

  @override
  void onReady(){
    // Quando o controller é criado
    print("On Init!");
    super.onReady();
  }

  @override
  void onClose(){
    // Quando o controller é fechado
    print("On Init!");
    super.onClose();
  }
}
