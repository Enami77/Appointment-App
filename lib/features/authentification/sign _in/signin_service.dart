import 'package:appointment_app/core/dio_helper.dart';
import 'package:appointment_app/features/authentification/models/login_model.dart';

class SignInService {
  Future<LoginResponseModel> login(LoginRequestModel request) async {
    final response = await DioHelper.dio.post(
      "auth/login",
      data: request.toJson(),
    );

    return LoginResponseModel.fromJson(response.data);
  }
}
