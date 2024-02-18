import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:head_start/constants/application.dart';
import 'package:head_start/core/enum/language_enum.dart';
import 'package:head_start/pages/test_pages/test_home.dart';
import 'package:head_start/theme/theme_mods/bloc/theme_bloc.dart';
import 'package:head_start/theme/theme_mods/bloc/theme_event.dart';
import 'package:head_start/theme/theme_mods/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Device Orientation
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown]);

  // Localization
  final savedLocale = await Languages.loadLang();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      startLocale: savedLocale.toLocale(),
      supportedLocales: Application.supportedLanguages.toLocaleList(),
      path: Application.paths.language,
      fallbackLocale: Languages.turkish.toLocale(),
      child: MultiBlocProvider(
          providers: [BlocProvider<ThemeBloc>(create: (_) => ThemeBloc()..add(InitialThemeSetEvent()))],
          child: const MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeData>(
      builder: (context, state) {
        return MaterialApp(
          title: 'Quick Start Template',
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          theme: CustomTheme().lightTheme,
          themeMode: state == ThemeData.dark() ? ThemeMode.dark : ThemeMode.light,
          darkTheme: CustomTheme().darkTheme,
          home: const TestView(),
        );
      },
    );
  }
}
