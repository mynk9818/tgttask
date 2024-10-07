import 'package:get_storage/get_storage.dart';
import 'package:tgttask/app/data/Model/bookmodel.dart';

abstract class StorageService {
  static late GetStorage getStorage;
  static const bookKey = "bookKey";

  static Future<void> init() async {
    await GetStorage().initStorage;
    getStorage = GetStorage("collection");
  }

  static Map<String, List<BookModel>?>? getBooks() {
    final books = getStorage.read(bookKey);
    return books;
  }

  static void addBook(String categoryId, BookModel book) {
    Map<String, List<BookModel>?> books = getBooks() ?? {};
    List<BookModel>? categoryBooks = books[categoryId];
    if (categoryBooks == null) {
      books[categoryId] = [book];
    } else {
      categoryBooks.add(book);
      books[categoryId] = categoryBooks;
    }
    getStorage.write(bookKey, {categoryId: categoryBooks});
  }

  static void setBooks() {}
}
