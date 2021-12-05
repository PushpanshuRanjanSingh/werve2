import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:werve/constant/color.dart';
import 'package:werve/constant/custom_text.dart';

Widget customOutlineButton(
    {required VoidCallback? onPressed, required String label, Color? textColor, Color? bgColor}) {
  return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 14),
        backgroundColor: bgColor,
        side: BorderSide(width: 1.0, color: textColor ?? AppColor.textColor),
      ),
      child: customText(label,
          style: Theme.of(Get.context!).textTheme.bodyText1!.copyWith(
              color: textColor ?? AppColor.textColor,
              fontSize: 14,
              fontWeight: FontWeight.w800)));
}
