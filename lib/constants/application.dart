import 'package:head_start/core/enum/language_enum.dart';

class ApplicationPaths {
  const ApplicationPaths();
  final String translation = 'assets/translations';
  final String images = 'assets/images';
  final String language = 'assets/translations';
}

class Application {
  static const Languages language = Languages.english;
  static const Iterable<Languages> supportedLanguages = Languages.values;


  static const ApplicationPaths paths = ApplicationPaths();
}
