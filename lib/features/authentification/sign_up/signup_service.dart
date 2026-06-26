import 'package:appointment_app/features/authentification/dio_helper.dart';
import 'package:appointment_app/features/authentification/models/register_model.dart';

class SignupService {
  Future<RegisterResponseModel> register(RegisterRequestModel request) async {
    final response = await DioHelper.dio.post(
      "auth/register",
      data: request.toJson(),
    );
    return RegisterResponseModel.fromJson(response.data);
  }
}
