import 'package:werve/export.dart';

Widget servingOfAlcoholMethod(LifeStyleActivityController controller) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Center(
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customTextFullWidth("How many servings of alcohol do you have on a typical day?", bold: true),
          vGap(height: 20),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.servingOfAlcoholData.length,
              itemBuilder: (BuildContext context, int index) {
                return customOutlineButton(
                  label: controller.servingOfAlcoholData[index],
                  bgColor: controller.servingOfAlcoholSelect ==
                      controller.servingOfAlcoholData[index]
                      ? AppColor.green50
                      : null,
                  borderColor: controller.servingOfAlcoholSelect ==
                      controller.servingOfAlcoholData[index]
                      ? AppColor.green50
                      : AppColor.textColor,
                  textColor: AppColor.textColor,
                  onPressed: () {
                    controller.servingOfAlcoholSelect = controller.servingOfAlcoholData[index];
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
