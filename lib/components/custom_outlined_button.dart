import 'package:werve/export.dart';

Widget customOutlineButton(
    {required VoidCallback? onPressed,
    required String label,
    TextAlign? textAlign = TextAlign.center,
    Color? textColor,
    Color? borderColor,
    double radius = 8.0,
    Color? bgColor,
    bool deactivate = false,
    EdgeInsets? padding = const EdgeInsets.symmetric(vertical: 16),
    bool? next}) {
  return OutlinedButton(
      onPressed: deactivate ? () {} : onPressed,
      style: OutlinedButton.styleFrom(
        padding: padding,
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
        side: BorderSide(
            width: 1.0,
            color: deactivate
                ? Colors.grey
                : label.toLowerCase() == ("back") ||
                        label.toLowerCase() == ("next")
                    ? Colors.transparent
                    : borderColor ?? AppColor.buttonColor),
      ),
      child: label.toLowerCase() == ("back")
          ? const Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
            )
          : label.toLowerCase() == ("next")
              ? const Icon(Icons.arrow_forward_rounded, color: Colors.black)
              : customText(label,
                  maxLines: 3,
                  textAlign: textAlign,
                  style: CustomTextStyle.fadeText2(
                      textColor: deactivate
                          ? Colors.grey
                          : textColor ?? AppColor.buttonColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold)));
}
