import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:head_start/core/enum/locale_enum.dart';
import 'package:head_start/theme/animations/fade_anim.dart';
import 'package:head_start/view/test/test_view.dart';

class SelectLanguage extends Padding {
  final BuildContext context;

  SelectLanguage({super.key, required this.context})
      : super(
          padding: const EdgeInsets.only(right: 15),
          child: Container(
            decoration: BoxDecoration(color: Colors.pink[400], borderRadius: BorderRadius.circular(10)),
            child: DropdownButton(
              iconEnabledColor: Colors.white,
              iconDisabledColor: Colors.white,
              padding: const EdgeInsets.all(5),
              isDense: true,
              hint: const Icon(
                Icons.language_rounded,
                color: Colors.white,
              ),
              underline: const SizedBox(),
              items: AppLanguages.Languages.asMap()
                  .entries
                  .map(
                    (entry) => DropdownMenuItem(
                      value: entry.value,
                      child: Text(entry.value),
                    ),
                  )
                  .toList(),
              onChanged: (newValue) {
                int selectedIndex = AppLanguages.Languages.indexOf(newValue as String);
                context.setLocale(AppLanguages.supportedLanguages[selectedIndex]);
                Navigator.pushReplacement(context, FadeAnim(page: const TestView()));
              },
            ),
          ),
        );
}
