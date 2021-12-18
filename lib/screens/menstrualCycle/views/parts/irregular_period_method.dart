import 'package:werve/export.dart';

Widget irregularPeriodMethod(MenstrualCycleController controller) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customTextFullWidth(
                  " Do you have irregular periods?",
                  bold: true),
              vGap(height: 20),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.irregularPeriodData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return customOutlineButton(
                      label: controller.irregularPeriodData[index],
                      bgColor: controller.irregularPeriodSelect ==
                              controller.irregularPeriodData[index]
                          ? AppColor.green50
                          : null,
                      borderColor: controller.irregularPeriodSelect ==
                              controller.irregularPeriodData[index]
                          ? AppColor.green50
                          : AppColor.textColor,
                      textColor: AppColor.textColor,
                      onPressed: () {
                        controller.irregularPeriodSelect =
                            controller.irregularPeriodData[index];
                        if (index == 1) {
                          controller.irregularPeriodFirstSelect = null;
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
                        itemCount: controller.irregularPeriodFirstData.length,
                        itemBuilder: (BuildContext context, int index) {
                          return customOutlineButton(
                            label: controller.irregularPeriodFirstData[index],
                            bgColor: controller.irregularPeriodFirstSelect ==
                                    controller.irregularPeriodFirstData[index]
                                ? AppColor.green50
                                : null,
                            borderColor: controller
                                        .irregularPeriodFirstSelect ==
                                    controller.irregularPeriodFirstData[index]
                                ? AppColor.green50
                                : AppColor.textColor,
                            textColor: AppColor.textColor,
                            onPressed: () {
                              controller.irregularPeriodFirstSelect =
                                  controller.irregularPeriodFirstData[index];
                              controller.irregularPeriodSelect =
                                  controller.irregularPeriodData[0];
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
