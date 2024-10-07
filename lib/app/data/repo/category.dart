import 'package:dio/dio.dart';

class CategoryRepo {
  Dio dio = Dio();

  Future<List<Map<String, dynamic>>> getCategory() async {
    const url =
        "https://books-api-task-db307f0c475d.herokuapp.com/api/categories";
    var response = await dio.get(url);

    return response.data;
  }
}
