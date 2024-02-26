
import 'package:flutter/material.dart';

import '../pages/index.dart';
import '../pages/login.dart';

class Routes{

  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const IndexRoute());
      case '/login':
        return MaterialPageRoute(builder: (context) =>  LoginRoute());
      default:
        return null;
    }
  }
}