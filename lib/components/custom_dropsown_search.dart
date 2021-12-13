import 'package:werve/export.dart';

Widget dropdownWithSearch({
  @required List<dynamic>? list,
  @required String? hintText,
  @required Function(dynamic)? onChange,
  @required String Function(dynamic)? itemAsString,
}) {
  return DropdownSearch<dynamic>(
    mode: Mode.BOTTOM_SHEET,
    showSearchBox: true,
    showAsSuffixIcons: true,
    dropdownSearchDecoration: InputDecoration(
      hintText: "$hintText",
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(
          color: Colors.grey.shade100,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(
          color: Colors.grey.shade200,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(
          color: Colors.grey.shade100,
        ),
      ),
    ),
    items: list,
    itemAsString: itemAsString,
    onChanged: onChange,
  );
}
