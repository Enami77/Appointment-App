import 'package:dio/dio.dart';

class DioHelper {
  static final Dio dio = Dio(
    BaseOptions(
      baseUrl: "https://vcare.integration25.com/api/",
      headers: {"Accept": "application/json"},
    ),
  );
}
