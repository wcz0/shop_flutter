import 'package:flutter/material.dart';

import '/app/my_app.dart';
import '/flavors/build_config.dart';
import '/flavors/env_config.dart';
import '/flavors/environment.dart';

void main() {
  EnvConfig devConfig = EnvConfig(
    appName: "Flutter Shop Test",
    baseUrl: "https://v5.crmeb.net/api",
    shouldCollectCrashLog: true,
  );

  BuildConfig.instantiate(
    envType: Environment.development,
    envConfig: devConfig,
  );

  runApp(const MyApp());
}
