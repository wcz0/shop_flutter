import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_flutter/enum/navigation.dart';
import 'package:shop_flutter/pages/login.dart';
import 'package:shop_flutter/pages/common/navigation_bar.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({super.key});

  @override
  State createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  final NavigationEnum navigation = NavigationEnum.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: buildNavigationBar(context, navigation.index),
        body: ElevatedButton(
            child: const Text('登录页'),
            onPressed: () => GoRouter.of(context).push('/login')));
  }
}

void test(context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => LoginRoute()));
}
