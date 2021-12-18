import 'package:werve/export.dart';

Widget diabetesMethod(MenstrualCycleController controller) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customTextFullWidth(
                  "Do you have a family history of PCOD or diabetes?",
                  bold: true),
              vGap(height: 20),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.diabetesData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return customOutlineButton(
                      label: controller.diabetesData[index],
                      bgColor: controller.diabetesSelect ==
                              controller.diabetesData[index]
                          ? AppColor.green50
                          : null,
                      borderColor: controller.diabetesSelect ==
                              controller.diabetesData[index]
                          ? AppColor.green50
                          : AppColor.textColor,
                      textColor: AppColor.textColor,
                      onPressed: () {
                        controller.diabetesSelect =
                            controller.diabetesData[index];
                        if (index == 1) {
                          controller.diabetesFirstSelect = null;
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
                        itemCount: controller.diabetesFirstData.length,
                        itemBuilder: (BuildContext context, int index) {
                          return customOutlineButton(
                            label: controller.diabetesFirstData[index],
                            bgColor: controller.diabetesFirstSelect ==
                                    controller.diabetesFirstData[index]
                                ? AppColor.green50
                                : null,
                            borderColor: controller
                                        .diabetesFirstSelect ==
                                    controller.diabetesFirstData[index]
                                ? AppColor.green50
                                : AppColor.textColor,
                            textColor: AppColor.textColor,
                            onPressed: () {
                              controller.diabetesFirstSelect =
                                  controller.diabetesFirstData[index];
                              controller.diabetesSelect =
                                  controller.diabetesData[0];
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
