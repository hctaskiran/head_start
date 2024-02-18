import 'package:flutter/material.dart';
import 'package:head_start/core/enum/language_enum.dart';

extension LanguageListExtensions on Iterable<Languages> {
  List<Locale> toLocaleList() => map((e) => e.toLocale()).toList();
}
