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
	static Color orange = Colors.orange;
	static Color gry3 = Colors.grey[100]!;
	static Color gry1 = Colors.grey[300]!;
	static Color r5 = Colors.red[500]!;
	static Color pi4 = Colors.pink[400]!;
	static Color gry7 = Colors.grey[700]!;
	static Color bnbBG = Colors.fromARGB(255, 244, 206, 219);
	static Color black = Colors.black;
	static Color tr = Colors.transparent;
	
}
