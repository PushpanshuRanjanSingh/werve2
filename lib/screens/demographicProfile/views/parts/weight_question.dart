import 'package:werve/export.dart';

Widget weightQuestion(DemographicProfileController controller) => Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            customTextFullWidth("Tell us about your Weight",
                style: CustomTextStyle.fadeText2(fontWeight: FontWeight.bold)),
            vGap(height: 20),
            customText(controller.isFt ? "Kgs" : "lbs",
                style: CustomTextStyle.fadeText1(
                  fontSize: 20,
                )),
            vGap(),
            /**/
            controller.isFt
                ? Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
                    color: AppColor.grey,
                    height: 64,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.weightInKg.length,
                        itemBuilder: (BuildContext context, int index) {
                          return customTextButton(
                              onPressed: () {
                                controller.weightLb = 0;
                                controller.weightKg =
                                    controller.weightInKg[index];
                                controller.calculateWeight();
                                controller.update();
                              },
                              label: controller.weightInKg[index].toString(),
                              textColor: controller.weightKg ==
                                      controller.weightInKg[index]
                                  ? Colors.white
                                  : null);
                        }),
                  )
                : Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
                    color: AppColor.grey,
                    height: 64,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.heightInCms.length,
                        itemBuilder: (BuildContext context, int index) {
                          return customTextButton(
                              onPressed: () {
                                controller.weightKg = 0;
                                controller.weightLb =
                                    controller.weightInLbs[index];
                                controller.calculateWeight();
                                controller.update();
                              },
                              label: controller.weightInLbs[index].toString(),
                              textColor: controller.weightLb ==
                                      controller.weightInLbs[index]
                                  ? Colors.white
                                  : null);
                        }),
                  ),
            vGap(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customOutlineButton(
                    onPressed: () {
                      controller.toggleToFt();
                    },
                    label: "kgs",
                    next: false,
                    radius: 3,
                    borderColor: Colors.grey.shade300,
                    bgColor: controller.isFt ? AppColor.greyBG : null,
                    textColor: controller.isFt ? AppColor.textColor : null),
                customOutlineButton(
                    onPressed: () {
                      controller.toggleToCm();
                    },
                    label: "lbs",
                    next: true,
                    radius: 3,
                    borderColor: Colors.grey.shade300,
                    bgColor: controller.isFt ? null : AppColor.greyBG,
                    textColor: controller.isFt ? null : AppColor.textColor),
              ],
            )
          ],
        ),
      ),
    );
