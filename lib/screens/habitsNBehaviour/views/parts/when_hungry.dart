import 'package:werve/export.dart';

Widget whenHungry(HabitNBehaviorController controller) => Center(
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
                      "You’re hungry and scrolling through takeout apps. What do you get?",
                      bold: true),
                  vGap(height: 20),
                  ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.whenHungryData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return customOutlineButton(
                          label: controller.whenHungryData[index],
                          bgColor: controller.whenHungaryUEat ==
                                  controller.whenHungryData[index]
                              ? AppColor.green50
                              : null,
                          borderColor: controller.whenHungaryUEat ==
                                  controller.whenHungryData[index]
                              ? AppColor.green50
                              : AppColor.textColor,
                          textColor: AppColor.textColor,
                          onPressed: () {
                            controller.whenHungaryUEat =
                                controller.whenHungryData[index];
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
