import 'package:flutter/material.dart';
import 'package:werve/constant/color.dart';

Widget customTextButton({
  required VoidCallback? onPressed,
  required String label,
  Color? textColor,
}) =>
    SizedBox(
      height: 56,
      width: 77,
      child: TextButton(
        style: TextButton.styleFrom(
            primary: textColor ?? AppColor.textColor,
            backgroundColor: textColor != null ? AppColor.green50 : null,
            textStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        onPressed: onPressed,
        child: Text(label),
      ),
    );
