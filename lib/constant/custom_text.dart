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
      maxLines: maxLines ?? 3,
    );

Widget customTextFullWidth(String text,
        {TextStyle? style, int? maxLines, bool bold = false}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            text,
            style: bold
                ? style ?? Theme.of(Get.context!).textTheme.bodyText2
                : style ?? Theme.of(Get.context!).textTheme.bodyText1,
            maxLines: maxLines,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
