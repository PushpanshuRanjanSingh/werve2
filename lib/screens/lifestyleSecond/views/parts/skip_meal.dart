import 'package:werve/export.dart';

Widget skipMealMethod(LifeStyleSecondController controller) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Center(
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customTextFullWidth("How often do you skip your meals?", bold: true),
          vGap(height: 20),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.skipMealData.length,
              itemBuilder: (BuildContext context, int index) {
                return customOutlineButton(
                  label: controller.skipMealData[index],
                  bgColor: controller.skipMealSelect ==
                      controller.skipMealData[index]
                      ? AppColor.green50
                      : null,
                  borderColor: controller.skipMealSelect ==
                      controller.skipMealData[index]
                      ? AppColor.green50
                      : AppColor.textColor,
                  textColor: AppColor.textColor,
                  onPressed: () {
                    controller.skipMealSelect = controller.skipMealData[index];
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
