import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_flutter/config/bootstrap.dart';
import 'package:shop_flutter/enum/navigation.dart';
import '../../pages/home/index.dart';
import '../../pages/login.dart';
import '../../pages/profile/index.dart';

class RoutesConfig {
  final router = GoRouter(
    initialLocation: NavigationEnum.home.path,
    // Test Route
    // initialLocation: '/login',
    routes: [
      GoRoute(
        name: NavigationEnum.home.label,
        path: NavigationEnum.home.path,
        builder: (context, state) => const HomeRoute(),
      ),
      GoRoute(
        name: 'login',
        path: '/login',
        builder: (context, state) => const LoginRoute(),
      ),
      GoRoute(
        name: NavigationEnum.profile.label,
        path: NavigationEnum.profile.path,
        builder: (context, state) => const ProfileRoute(),
        redirect: (context, state) => _checkAuth(context, state),
      ),
      GoRoute(
        name: NavigationEnum.category.label,
        path: NavigationEnum.category.path,
        builder: (context, state) => const ProfileRoute(),
      ),
      // GoRoute(
      //   name: NavigationEnum.message.label,
      //   path: NavigationEnum.message.path,
      //   builder: (context, state) => const ProfileRoute(),
      //   redirect: (context, state) => _checkAuth(context, state),
      // ),
      GoRoute(
        name: NavigationEnum.cart.label,
        path: NavigationEnum.cart.path,
        builder: (context, state) => const ProfileRoute(),
        redirect: (context, state) => _checkAuth(context, state),
      ),
    ],
  );
}

Future<String?> _checkAuth(BuildContext context, GoRouterState state) async {
  final String? token = Bootstrap.prefs!.getString('token');
  if (token == null) {
    return '/login';
  }
  return null;
}
