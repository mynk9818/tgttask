import 'package:get/get.dart';
import 'package:tgttask/app/data/Model/bookmodel.dart';
import 'package:tgttask/app/data/storage_service.dart';

class HomeController extends GetxController {
  String a = "my";
  @override
  void onInit() {
    refreshPage();
    super.onInit();
  }

  final  RxMap<String, List<BookModel>?> books = (StorageService.getBooks() ??  {}).obs;

  refreshPage() {
    books.clear();
    StorageService.addBook("1", BookModel(title: "title"));
    books.value = StorageService.getBooks() ?? {};
  }
}
