import 'package:werve/export.dart';

Widget healthWeightMethod(MenstrualCycleController controller) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customTextFullWidth(
                  "Do you have trouble maintaining a healthy weight?",
                  bold: true),
              vGap(height: 20),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.healthWeightData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return customOutlineButton(
                      label: controller.healthWeightData[index],
                      bgColor: controller.healthWeightSelect ==
                              controller.healthWeightData[index]
                          ? AppColor.green50
                          : null,
                      borderColor: controller.healthWeightSelect ==
                              controller.healthWeightData[index]
                          ? AppColor.green50
                          : AppColor.textColor,
                      textColor: AppColor.textColor,
                      onPressed: () {
                        controller.healthWeightSelect =
                            controller.healthWeightData[index];
                        if (index == 1) {
                          controller.healthWeightFirstSelect = null;
                        }
                        controller.update();
                      },
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        itemCount: controller.healthWeightFirstData.length,
                        itemBuilder: (BuildContext context, int index) {
                          return customOutlineButton(
                            label: controller.healthWeightFirstData[index],
                            bgColor: controller.healthWeightFirstSelect ==
                                    controller.healthWeightFirstData[index]
                                ? AppColor.green50
                                : null,
                            borderColor: controller
                                        .healthWeightFirstSelect ==
                                    controller.healthWeightFirstData[index]
                                ? AppColor.green50
                                : AppColor.textColor,
                            textColor: AppColor.textColor,
                            onPressed: () {
                              controller.healthWeightFirstSelect =
                                  controller.healthWeightFirstData[index];
                              controller.healthWeightSelect =
                                  controller.healthWeightData[0];
                              controller.update();
                            },
                          );
                        },
                      ))
            ],
          ),
        ),
      ),
    );
