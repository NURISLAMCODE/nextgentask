import 'package:nextgenweather/nextgenweather.dart';

class AppColors {
  AppColors._();

  static Color get transparent =>  Colors.transparent;

  static Color get white => const Color(0xFFFFFFFF);

  static Color custom(String code) {
    final color = code.replaceAll('#', '');
    return Color(int.parse('0xFF$color'));
  }

  static Color get random {
    return Color(Random().nextInt(0xffffffff)).withAlpha(0xff);
  }
}

