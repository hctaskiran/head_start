import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum Languages {
  english(language: 'en', country: 'US'),
  turkish(language: 'tr', country: 'TR'),
  russian(language: 'ru', country: 'RU');

  final String language;
  final String? country;

  const Languages({required this.language, this.country});

  Locale toLocale() => Locale(language, country);

  Future<void> saveLocale() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', language);
  }

  static Future<Languages> loadLang() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? languageCode = prefs.getString('language');
    return Languages.values.firstWhere(
      (element) => element.language == languageCode,
      orElse: () => Languages.english,
    );
  }
}

extension LanguageListExtensions on Iterable<Languages> {
  List<Locale> toLocaleList() => map((e) => e.toLocale()).toList();
}

