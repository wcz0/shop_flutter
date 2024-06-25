

class LoginResponse {
  final String token;
  final String expiresTime;

  LoginResponse({required this.token, required this.expiresTime});

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      token: json['token'],
      expiresTime: json['expiresTime'],
    );
  }

  Map<String, dynamic> toJson(LoginResponse instance) {
    return <String, dynamic>{
      'token': token,
      'expiresTime': expiresTime,
    };
  }
}
