import 'package:shop_flutter/api/base.dart';
import 'package:shop_flutter/model/user.dart';

class AuthApi extends Api{

  Future<UserModel> login(){
    return dio.post('/auth/login');
  }
}