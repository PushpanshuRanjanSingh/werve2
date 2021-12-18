import 'package:werve/export.dart';

Widget adjustToChangeMethod(LifeStyleSecondController controller) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Center(
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customTextFullWidth("I am flexible and adapt or adjust to change in a positive way.", bold: true),
          vGap(height: 20),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.adjustToChangeData.length,
              itemBuilder: (BuildContext context, int index) {
                return customOutlineButton(
                  label: controller.adjustToChangeData[index],
                  bgColor: controller.adjustToChangeSelect ==
                      controller.adjustToChangeData[index]
                      ? AppColor.green50
                      : null,
                  borderColor: controller.adjustToChangeSelect ==
                      controller.adjustToChangeData[index]
                      ? AppColor.green50
                      : AppColor.textColor,
                  textColor: AppColor.textColor,
                  onPressed: () {
                    controller.adjustToChangeSelect = controller.adjustToChangeData[index];
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
