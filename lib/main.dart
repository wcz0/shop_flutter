import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shop_flutter/config/bootstrap.dart';
import 'package:shop_flutter/config/routes.dart';
import 'package:shop_flutter/state/cart.dart';

// import 'l10n/localizations_intl.dart';
// import 'package::flutter_localizations/flutter_localizations.dart';

void main() {
  Bootstrap.init().then((value) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartState()),
      ],
      child: MaterialApp.router(
        title: 'Shop Flutter',
        themeMode: ThemeMode.system,
        theme: ThemeData.light(
          useMaterial3: true,
        ).copyWith(
          primaryColor: Colors.blue,
          textTheme: ThemeData.light(
          ).textTheme.apply(
            bodyColor: Colors.black,
            displayColor: Colors.blue,
          ),
        ),
        darkTheme: ThemeData.dark(
          useMaterial3: true,
        ).copyWith(
          primaryColor: Colors.blue,
          textTheme:  ThemeData.dark().textTheme.apply(
            bodyColor: Colors.white,
            displayColor: Colors.blue,
          ),
        ),
        // 多语言配置
        // localizationsDelegates: const [
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        // ],
        // supportedLocales: const [
        //   Locale('en', 'US'),
        //   Locale('zh', 'CN'),
        // ],
        routerConfig: RoutesConfig().router,
        // routeInformationParser: ,
      ),
    );
  }
}
