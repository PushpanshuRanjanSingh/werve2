import 'dart:ui';

class AppColor {
  AppColor._();

  static Color textColor = HexColor("#333333");
  static Color greenTextColor = HexColor("#59C36A");
  static Color grey = HexColor("#F4F4F4");
  static Color yellow = HexColor("#FFDA2D");
  static Color orange = HexColor("#FB9C4C");
  static Color green50 = HexColor("#A3E8AE");


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
