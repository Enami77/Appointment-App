class LoginRequestModel {
  final String email;
  final String password;

  LoginRequestModel({required this.email, required this.password});

  Map<String, dynamic> toJson() {
    return {"email": email, "password": password};
  }
}

class LoginResponseModel {
  final String message;

  final String token;
  final String username;

  LoginResponseModel({
    required this.message,
    required this.token,
    required this.username,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      message: json["message"],
      token: json["data"]["token"],
      username: json["data"]["username"],
    );
  }
}
