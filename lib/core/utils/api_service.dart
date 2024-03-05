import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;

  ApiService(this.dio);
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    try {
      final response = await dio.get(_baseUrl + endPoint);
      return response.data;
    } on DioException catch (e) {
      return e.response!.data;
    }
  }
}
