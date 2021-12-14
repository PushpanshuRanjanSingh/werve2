import 'package:werve/export.dart';

Widget howOftenEat(HabitNBehaviorController controller) => Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customTextFullWidth("How often do you eat out?", bold: true),
                  vGap(height: 20),
                  ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.oftenEatData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return customOutlineButton(
                          label: controller.oftenEatData[index],
                          bgColor: controller.oftenUEat ==
                                  controller.oftenEatData[index]
                              ? AppColor.green50
                              : null,
                          borderColor: controller.oftenUEat ==
                                  controller.oftenEatData[index]
                              ? AppColor.green50
                              : AppColor.textColor,
                          textColor: AppColor.textColor,
                          onPressed: () {
                            controller.oftenUEat =
                                controller.oftenEatData[index];
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
