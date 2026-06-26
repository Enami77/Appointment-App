import 'package:appointment_app/features/authentification/models/register_model.dart';
import 'package:appointment_app/features/authentification/sign_up/signup_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class SignUpProvider extends ChangeNotifier {
  final SignupService service = SignupService();

  bool isLoading = false;
  String? message;
  String? token;
  String? username;

  Future<void> register(RegisterRequestModel request) async {
    isLoading = true;
    notifyListeners();

    try {
      final response = await service.register(request);

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
