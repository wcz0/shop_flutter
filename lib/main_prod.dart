import 'package:flutter/material.dart';

import '/app/my_app.dart';
import '/flavors/build_config.dart';
import '/flavors/env_config.dart';
import '/flavors/environment.dart';

void main() {
  EnvConfig prodConfig = EnvConfig(
    appName: "Flutter Shop",
    baseUrl: "hhttps://v5.crmeb.net/api",
    shouldCollectCrashLog: true,
  );

  BuildConfig.instantiate(
    envType: Environment.production,
    envConfig: prodConfig,
  );

  runApp(const MyApp());
}
