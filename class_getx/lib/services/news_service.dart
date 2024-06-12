import 'package:class_getx/models/todos.dart';
import 'package:get/get.dart';

class NewsServices extends GetConnect implements GetxService {

  Future<Todos> getNewsData() async{
    var response = await get('https://jsonplaceholder.typicode.com/users');
    print(response.body);
    return Todos.fromJson(response.body);
  }

  Future<Todos> postNewsData() async{
    var response = await post('https://jsonplaceholder.typicode.com/users', );
    print(response.body);
    return Todos.fromJson(response.body);
  }
}
