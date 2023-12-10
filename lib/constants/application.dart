import 'package:head_start/core/enum/language_enum.dart';

class ApplicationPaths {
  const ApplicationPaths();
  final String translation = 'assets/translations';
  final String images = 'assets/images';
}

class Application {
  static const Languages language = Languages.english;

  static const Iterable<Languages> supportedLanguages = Languages.values;

  static const ApplicationPaths paths = ApplicationPaths();
}
