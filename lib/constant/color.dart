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
  static Color white = HexColor("#FFFFFF");
  static Color golden = HexColor("#D0BA7D");
  static Color pinkish = HexColor("#EB5757");

  //  goal
  static Color fitnessColor = HexColor("#F2EEE3");
  static Color mindfulnessColor = HexColor("#D1DEFF");
  static Color nutritionColor = HexColor("#F6FFE0");
  static Color sleepColor = HexColor("#FFF7D4");
  static Color smartphoneColor = HexColor("#FFECF5");
  static Color diabetesColor = HexColor("#FFDED0");
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
