import 'package:dio/dio.dart';

import '../model/book.dart';

class BookRepository{
  final _dio = Dio();
  final _baseUrl = 'https://3ea4-212-94-18-22.ngrok-free.app/api/book';

  Future<Book?> getBook({required String id}) async {
    Book? book;
    try {
      Response response = await _dio.get(_baseUrl + '$id');
      book = Book.fromJson(response.data);
      return book;
    } on DioException catch (e) {
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        // Error due to setting up or sending the request
        print('Error sending request!');
        print(e.message);
      }
    }
    return book;
  }

  Future<List<Book>?> getBooks() async{
    List<Book>? books;
    try {
      Response response = await _dio.get(_baseUrl);
      books = (response.data as List).map((e) => Book.fromJson(e)).toList();
      return books;
    } catch (e) {
      Exception(e);
    }
    return books;
  }
}