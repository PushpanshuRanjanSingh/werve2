import 'package:werve/export.dart';

Widget customOutlineButton(
    {required VoidCallback? onPressed,
    required String label,
    Color? textColor,
    Color? borderColor,
    double radius = 8.0,
    Color? bgColor,
    bool? next}) {
  return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 14),
        backgroundColor: bgColor,
        shape: next != null
            ? RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                topLeft: Radius.circular(next ? 0.0 : radius),
                bottomLeft: Radius.circular(next ? 0.0 : radius),
                topRight: Radius.circular(next ? radius : 0.0),
                bottomRight: Radius.circular(next ? radius : 0.0),
              ))
            : null,
        side:
            BorderSide(width: 1.0, color: borderColor ?? AppColor.buttonColor),
      ),
      child: customText(label,
          style: CustomTextStyle.fadeText2(
              textColor: textColor ?? AppColor.buttonColor,
              fontSize: 14,
              fontWeight: FontWeight.bold)));
}
