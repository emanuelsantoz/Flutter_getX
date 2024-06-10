import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  GetStorage cache = GetStorage();
  String name = '';
  RxInt index = 0.obs;

  void contador() {
    index++;
  }

  void displayNome() {
    name = 'Emanuel';
    // salvando dados
    cache.write('nome', name);
    update();
  }

  void getTheSavedName() {
    String nameA = cache.read('nome');
    print(nameA);
    update();
  }

  void deleteSavedName(){
    cache.remove('nome');
    print('Nome removido com sucesso!');
    update();
  }

  @override
  void onInit() {
    // Quando abre a página
    print("On Init!");
    super.onInit();
  }

  @override
  void onReady() {
    // Quando o controller é criado
    print("On Init!");
    super.onReady();
  }

  @override
  void onClose() {
    // Quando o controller é fechado
    print("On Init!");
    super.onClose();
  }
}
