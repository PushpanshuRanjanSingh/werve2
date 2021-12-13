import 'package:werve/export.dart';

Widget customText(String text,
        {TextStyle? style,
        int? maxLines,
        bool bold = false,
        TextAlign? textAlign}) =>
    Text(
      text,
      textAlign: textAlign,
      style: bold
          ? style ?? Theme.of(Get.context!).textTheme.bodyText2
          : style ?? Theme.of(Get.context!).textTheme.bodyText1,
      maxLines: maxLines ?? 1,
    );

Widget customTextFullWidth(String text,
        {TextStyle? style, int? maxLines, bool bold = false}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: bold
              ? style ?? Theme.of(Get.context!).textTheme.bodyText2
              : style ?? Theme.of(Get.context!).textTheme.bodyText1,
          maxLines: maxLines ?? 1,
        ),
      ],
    );
