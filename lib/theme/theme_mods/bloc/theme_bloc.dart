
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:head_start/theme/theme_mods/bloc/theme_event.dart';
import 'package:head_start/theme/theme_mods/bloc/theme_helper.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeData> {
  ThemeBloc() : super(ThemeData.dark()) {
    on<InitialThemeSetEvent>((event, emit) async {
      final bool hasDarkTheme = await ThemeHelper().isDark();
      if (hasDarkTheme) {
        emit(ThemeData.dark());
      } else {
        emit(ThemeData.light());
      }
    });

    on<ThemeSwitchEvent>((event, emit) async {
      final isDark = state == ThemeData.dark();
      emit(isDark ? ThemeData.light() : ThemeData.dark());
      ThemeHelper().setTheme(isDark);
    });
  }
}
