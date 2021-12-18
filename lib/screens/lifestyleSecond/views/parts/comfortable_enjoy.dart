import 'package:werve/export.dart';

Widget comfortableEnjoyMethod(LifeStyleSecondController controller) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Center(
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customTextFullWidth("I can comfortably enjoy life because of how I manage my budget.", bold: true),
          vGap(height: 20),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.comfortableByEnjoyData.length,
              itemBuilder: (BuildContext context, int index) {
                return customOutlineButton(
                  label: controller.comfortableByEnjoyData[index],
                  bgColor: controller.comfortableByEnjoySelect ==
                      controller.comfortableByEnjoyData[index]
                      ? AppColor.green50
                      : null,
                  borderColor: controller.comfortableByEnjoySelect ==
                      controller.comfortableByEnjoyData[index]
                      ? AppColor.green50
                      : AppColor.textColor,
                  textColor: AppColor.textColor,
                  onPressed: () {
                    controller.comfortableByEnjoySelect = controller.comfortableByEnjoyData[index];
                    controller.update();
                  },
                );
              },
              separatorBuilder: (BuildContext context, int index) => vGap())
        ],
      ),
    ),
  ),
);
