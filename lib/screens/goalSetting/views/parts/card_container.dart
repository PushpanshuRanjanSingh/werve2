import 'package:werve/export.dart';

Widget gridCard(
        {required bool selected,
        required String image,
        required String label,
        required Function() onPressed,
        required Color color}) =>
    InkWell(
      splashColor: Colors.transparent,
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
        // height: 180,
        // width: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: selected ? AppColor.white : color),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              child: selected
                  ? const Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 24,
                    )
                  : const Icon(
                      Icons.add,
                      color: Colors.grey,
                      size: 24,
                    ),
              alignment: Alignment.topLeft,
            ),
            Container(
              height: 70,
              width: 70,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4), color: color),
              child: Center(child: Image.asset(image)),
            ),
            customText(label, bold: true),
          ],
        ),
      ),
    );
