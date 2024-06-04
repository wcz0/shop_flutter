
import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse{
  final String? token;
  final String? expiresTime;

  LoginResponse({this.token, this.expiresTime});
}