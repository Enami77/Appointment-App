class RegisterRequestModel {
  final String name;
  final String email;
  final String phone;
  final String gender;
  final String password;
  final String passwordConfirmation;

  RegisterRequestModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.gender,
    required this.password,
    required this.passwordConfirmation,
  });
  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "email": email,
      "phone": phone,
      "gender": gender,
      "password": password,
      "password_confirmation": passwordConfirmation,
    };
  }
}

class RegisterResponseModel {
  final String message;
  final String token;
  final String username;

  RegisterResponseModel({
    required this.message,
    required this.token,
    required this.username,
  });

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) {
    return RegisterResponseModel(
      message: json["message"],
      token: json["data"]["token"],
      username: json["data"]["username"],
    );
  }
}
