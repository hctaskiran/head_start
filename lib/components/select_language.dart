import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:head_start/constants/application.dart';
import 'package:head_start/core/enum/locale_enum.dart';
import 'package:head_start/theme/animations/fade_anim.dart';
import 'package:head_start/view/main/home_view.dart';

class SelectLanguage extends Padding {
  final BuildContext context;

  SelectLanguage({super.key, required this.context})
      : super(
          padding: const EdgeInsets.only(right: 15),
          child: Container(
            decoration: BoxDecoration(color: CColor.pi4, borderRadius: BorderRadius.circular(10)),
            child: DropdownButton(
              iconEnabledColor: CColor.white,
              iconDisabledColor: CColor.white,
              padding: const EdgeInsets.all(5),
              isDense: true,
              hint: Icon(
                Icons.language_rounded,
                color: CColor.white,
              ),
              underline: const SizedBox(),
              items: AppLanguages.Languages.asMap()
                  .map((index, value) => MapEntry(
                      index,
                      DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      )))
                  .values
                  .toList(),
              onChanged: (newValue) {
                int selectedIndex = AppLanguages.Languages.indexOf(newValue as String);
                context.setLocale(AppLanguages.supportedLanguages[selectedIndex]);
                Navigator.push(
                  context,
                  FadeAnim(page: const HomeView()),
                );
              },
            ),
          ),
        );
}
