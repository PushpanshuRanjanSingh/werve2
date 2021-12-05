import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget customText(String text,
        {TextStyle? style, int? maxLines, bool bold = false}) =>
    Text(
      text,
      style: bold
          ? style ?? Theme.of(Get.context!).textTheme.bodyText2
          : style ?? Theme.of(Get.context!).textTheme.bodyText1,
      maxLines: maxLines ?? 1,
    );

Widget customTextFullWidth(String text,
    {TextStyle? style,
      int? maxLines,
      bool bold = false}) =>
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