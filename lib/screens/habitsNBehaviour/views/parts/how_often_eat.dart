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
                  if (controller.oftenUEat == "0 - 2" &&
                      controller.animation != null)
                    AnimatedBuilder(
                      builder: (BuildContext context, Widget? child) =>
                          Transform.translate(
                        offset: Offset(0, -controller.animationHandler!.value),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                imageAsset(Assets.leftHeart,
                                    height: 68, width: 68),
                                imageAsset(Assets.welldone,
                                    height: 68, width: 68),
                                imageAsset(Assets.rightHeart,
                                    height: 68, width: 68),
                              ],
                            ),
                            vGap(height: 2),
                            customTextFullWidth("Well done champ!",
                                style: Theme.of(Get.context!)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(color: AppColor.textColor)),
                            vGap(height: 20),
                          ],
                        ),
                      ),
                      animation: controller.animation!,
                    ),
                  vGap(height: 20),
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
                            controller.oftenEatAnimation();
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
