import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../pages/home/index.dart';
import '../../pages/login.dart';
import '../../pages/profile/index.dart';

class RoutesConfig {
  final router = GoRouter(initialLocation: '/', routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => HomeRoute(),
    ),
    GoRoute(
      name: 'login',
      path: '/login',
      builder: (context, state) => LoginRoute(),
    ),
    GoRoute(
      name: 'profile',
      path: '/profile',
      builder: (context, state) => const ProfileRoute(),
      redirect: (context, state) => checkAuth(context, state),
    )
  ]);
}

Future<String?> checkAuth(BuildContext context, GoRouterState state) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? token = prefs.getString('token');
  if (token == null) {
    return '/login';
  }
  return null;
}

