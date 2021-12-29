import 'package:werve/export.dart';

Widget doYouSmokeMethod(LifeStyleActivityController controller) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (controller.doYouSmokeSelect == "No" &&
                      controller.animation != null ||
                  controller.doYouSmokeSelect == "No")
                AnimatedBuilder(
                  builder: (BuildContext context, Widget? child) =>
                      Transform.translate(
                    offset: Offset(0, -controller.animationHandler!.value),
                    child: Column(
                      children: [
                        imageAsset(Assets.heartIcon, height: 68, width: 68),
                        vGap(height: 2),
                        customTextFullWidth("No smoking, Well done!",
                            style: Theme.of(Get.context!)
                                .textTheme
                                .bodyText2!
                                .copyWith(color: AppColor.pinkish)),
                      ],
                    ),
                  ),
                  animation: controller.animation!,
                ),
              vGap(height: 40),
              customTextFullWidth("Do you smoke?", bold: true),
              vGap(height: 20),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.doYouSmokeData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return customOutlineButton(
                      label: controller.doYouSmokeData[index],
                      bgColor: controller.doYouSmokeSelect ==
                              controller.doYouSmokeData[index]
                          ? AppColor.green50
                          : null,
                      borderColor: controller.doYouSmokeSelect ==
                              controller.doYouSmokeData[index]
                          ? AppColor.green50
                          : AppColor.textColor,
                      textColor: AppColor.textColor,
                      onPressed: () {
                        controller.doYouSmokeSelect =
                            controller.doYouSmokeData[index];
                        controller.noSmokeAnimation();
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
