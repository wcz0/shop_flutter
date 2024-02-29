import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_flutter/enum/navigation.dart';
import '../../pages/home/index.dart';
import '../../pages/login.dart';
import '../../pages/profile/index.dart';

class RoutesConfig {
  final router = GoRouter(
    // initialLocation: NavigationEnum.home.path,
    initialLocation: '/login',
    routes: [
    GoRoute(
      name: NavigationEnum.home.label,
      path: NavigationEnum.home.path,
      builder: (context, state) => HomeRoute(),
    ),
    GoRoute(
      name: 'login',
      path: '/login',
      builder: (context, state) => LoginRoute(),
    ),
    GoRoute(
      name: NavigationEnum.profile.label,
      path: NavigationEnum.profile.path,
      builder: (context, state) => const ProfileRoute(),
      redirect: (context, state) => _checkAuth(context, state),
    )
  ]);
}

Future<String?> _checkAuth(BuildContext context, GoRouterState state) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? token = prefs.getString('token');
  if (token == null) {
    return '/login';
  }
  return null;
}

