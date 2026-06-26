import 'package:appointment_app/features/authentification/models/login_model.dart';
import 'package:appointment_app/features/authentification/sign%20_in/signin_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class SignInProvider extends ChangeNotifier {
  final SignInService service = SignInService();

  bool isLoading = false;
  String? message;
  String? token;
  String? username;

  Future<void> login(String email, String password) async {
    isLoading = true;
    notifyListeners();

    try {
      final response = await service.login(
        LoginRequestModel(email: email, password: password),
      );
      message = response.message;

      token = response.token;
      username = response.username;
    } on DioException catch (e) {
      print(e.response?.data);
    }

    isLoading = false;
    notifyListeners();
  }
}
