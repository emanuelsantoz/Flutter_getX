import 'package:class_getx/models/todos.dart';
import 'package:class_getx/services/news_service.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  GetStorage cache = GetStorage();
  String name = '';
  RxInt index = 0.obs;
  Todos? todo;

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

  void deleteSavedName() {
    cache.remove('nome');
    print('Nome removido com sucesso!');
    update();
  }

  void getNewsUsers() async {
    todo = await NewsServices().getNewsData();
  }

  @override
  void onInit() {
    getNewsUsers();
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
