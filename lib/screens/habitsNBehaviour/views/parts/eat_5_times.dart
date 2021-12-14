import 'package:werve/export.dart';

Widget eat5Times(HabitNBehaviorController controller) => Center(
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
                    "Do you eat 5 or more servings of fruit and vegetables a day?",
                    bold: true,
                  ),
                  vGap(height: 20),
                  ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.eatFruitsData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return customOutlineButton(
                          label: controller.eatFruitsData[index],
                          bgColor: controller.eat5times ==
                                  controller.eatFruitsData[index]
                              ? AppColor.green50
                              : null,
                          borderColor: controller.eat5times ==
                                  controller.eatFruitsData[index]
                              ? AppColor.green50
                              : AppColor.textColor,
                          textColor: AppColor.textColor,
                          onPressed: () {
                            controller.eat5times =
                                controller.eatFruitsData[index];
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
