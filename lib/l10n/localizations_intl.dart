import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyLocalizations {
  static Future<MyLocalizations> load(Locale locale) {
    final String name = locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return MyLocalizations();
    });
  }
}