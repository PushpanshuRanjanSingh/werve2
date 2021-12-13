import 'package:werve/export.dart';

class AppColor {
  AppColor._();

  static Color textColor = HexColor("#000000");
  static Color buttonColor = HexColor("#2F80ED");
  static Color blueTextColor = HexColor("#4A6BB0");
  static Color greenTextColor = HexColor("#59C36A");
  static Color pinkTextColor = HexColor("#DD4794");
  static Color grey = HexColor("#F4F4F4");
  static Color greyBG = HexColor("#E1E1E1");
  static Color yellow = HexColor("#FFDA2D");
  static Color orange = HexColor("#FB9C4C");
  static Color green50 = HexColor("#59C36A");
}

class HexColor extends Color {
  static int getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(getColorFromHex(hexColor));
}
