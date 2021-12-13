import 'package:werve/export.dart';

class CustomTextStyle {
  static TextStyle fadeText1(
          {double? fontSize, FontWeight? fontWeight, Color? textColor}) =>
      Theme.of(Get.context!).textTheme.bodyText1!.copyWith(
          fontSize: fontSize, fontWeight: fontWeight, color: textColor);

  static TextStyle fadeText2(
          {double? fontSize, FontWeight? fontWeight, Color? textColor}) =>
      Theme.of(Get.context!).textTheme.bodyText2!.copyWith(
          fontSize: fontSize, fontWeight: fontWeight, color: textColor);
}
