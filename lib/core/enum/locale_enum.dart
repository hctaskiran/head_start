// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class AppLanguages {
  const AppLanguages._();
  static const LANG_PATH = 'assets/translations/';

  static const supportedLanguages = [EN_LOCALE, TR_LOCALE, RU_LOCALE];
  static const List<String> Languages = [
    "🇬🇧",
    "🇹🇷",
    "🇷🇺",
  ];

  static const TR_LOCALE = Locale('tr', 'TR');
  static const EN_LOCALE = Locale('en', 'US');
  static const RU_LOCALE = Locale('ru', 'RU');
}
