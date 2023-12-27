import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:head_start/constants/application.dart';
import 'package:head_start/core/enum/language_enum.dart';
import 'package:head_start/core/service/notification_service.dart';
import 'package:head_start/theme/widget/app_bar_theme.dart';
import 'package:head_start/theme/widget/bottom_nav_bar.dart';
import 'package:head_start/theme/widget/elevated_button_theme.dart';
import 'package:head_start/view/test/test_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Notification
  NotificationService().initNotification();

  // Device Orientation
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown]);

  // Localization
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      startLocale: Application.language.toLocale(), // Default project language is English
      supportedLocales: Application.supportedLanguages.toLocale().toList(),
      path: Application.paths.translation,
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Start Template',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        bottomNavigationBarTheme: CustomBNBTheme(),
        elevatedButtonTheme: EBTheme(),
        appBarTheme: CustomAppBarTheme(),
      ),
      home: const TestView(),
    );
  }
}
