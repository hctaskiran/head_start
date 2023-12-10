import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

enum Languages {
  english(language: 'en', country: 'US'),
  turkish(language: 'tr', country: 'TR'),
  russian(language: 'ru', country: 'RU');

  final String language;
  final String? country;

  const Languages({required this.language, this.country});

  Locale toLocale() => Locale(language, country);
  void setLocale(BuildContext context) => context.mounted ? context.setLocale(toLocale()) : null;
}

extension LanguageListExtensions on Iterable<Languages> {
  Iterable<Locale> toLocale() => map((e) => e.toLocale());
}
