import 'package:werve/export.dart';

Widget takeProteinFood(HabitNBehaviorController controller) => Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customTextFullWidth(
                      "How many times a week do you usually eat a serving of  protein foods?",
                      bold: true),
                  vGap(height: 20),
                  ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.proteinFoodData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return customOutlineButton(
                          label: controller.proteinFoodData[index],
                          bgColor: controller.proteinFood ==
                                  controller.proteinFoodData[index]
                              ? AppColor.green50
                              : null,
                          borderColor: controller.proteinFood ==
                                  controller.proteinFoodData[index]
                              ? AppColor.green50
                              : AppColor.textColor,
                          textColor: AppColor.textColor,
                          onPressed: () {
                            controller.proteinFood =
                                controller.proteinFoodData[index];
                            controller.update();
                          },
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          vGap())
                ],
              ),
            ),
          ],
        ),
      ),
    );
