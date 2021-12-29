import 'package:werve/export.dart';

Widget ageQuestion(DemographicProfileController controller) => Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            if (controller.ageRange != null && controller.animation != null)
              AnimatedBuilder(
                builder: (BuildContext context, Widget? child) =>
                    Transform.translate(
                  offset: Offset(0, -controller.animationstartHandler!.value),
                  child: Column(
                    children: [
                      imageAsset(Assets.starIcon, height: 68, width: 68),
                      vGap(height: 2),
                      customTextFullWidth(
                          "Congratulations on taking the first step!",
                          style: Theme.of(Get.context!)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: AppColor.greenTextColor)),
                    ],
                  ),
                ),
                animation: controller.animation!,
              ),
            vGap(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customTextFullWidth("Select your age group", bold: true),
                  vGap(height: 20),
                  ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.selectYourAgeGroup.length,
                      itemBuilder: (BuildContext context, int index) {
                        return customOutlineButton(
                          label: controller.selectYourAgeGroup[index],
                          bgColor: controller.ageRange ==
                                  controller.selectYourAgeGroup[index]
                              ? AppColor.green50
                              : null,
                          borderColor: controller.ageRange ==
                                  controller.selectYourAgeGroup[index]
                              ? AppColor.green50
                              : AppColor.textColor,
                          textColor: AppColor.textColor,
                          onPressed: () {
                            controller.ageRange =
                                controller.selectYourAgeGroup[index];
                            controller.startAnimation();
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
