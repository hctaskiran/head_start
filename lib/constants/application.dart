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

class CColor {
	static Color white = Colors.white;
	static color gry3 = Colors.grey[100]!;
	static color gry1 = Colors.grey[300]!;
	static Color pi4 = Colors.pink[400]!;
	static Color bnbBG = Colors.fromARGB(255, 244, 206, 219);
	static Color black = Colors.black;
}
