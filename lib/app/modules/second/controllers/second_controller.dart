import 'package:get/get.dart';
import 'package:tgttask/app/data/repo/category.dart';

class SecondController extends GetxController {
   CategoryRepo category = CategoryRepo();

   

  Future<void> getApi() async {
    final Response response;

    response = (await category.getCategory()) as Response;
  }
}
