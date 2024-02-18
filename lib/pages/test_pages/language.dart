import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:head_start/core/enum/language_enum.dart';
import 'package:head_start/core/init/lang/locale_keys.g.dart';

class GoToLanguageSelector extends StatelessWidget {
  const GoToLanguageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            title: Text(LocaleKeys.languages_english.tr()),
            onTap: () async {
              await Languages.english.saveLocale();
              context.setLocale(Languages.english.toLocale());
            },
          ),
          ListTile(
            title: Text(LocaleKeys.languages_russian.tr()),
            onTap: () async {
              await Languages.russian.saveLocale();
              context.setLocale(Languages.russian.toLocale());
            },
          ),
          ListTile(
            title: Text(LocaleKeys.languages_turkish.tr()),
            onTap: () async {
              await Languages.turkish.saveLocale();
              context.setLocale(Languages.turkish.toLocale());
            },
          )
        ],
      ),
    );
  }
}
