import 'package:werve/export.dart';

Widget skinProblemMethod(MenstrualCycleController controller) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customTextFullWidth("Do you have acne or other skin problems?",
                  bold: true),
              vGap(height: 20),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.skinProblemData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return customOutlineButton(
                      label: controller.skinProblemData[index],
                      bgColor: controller.skinProblemSelect ==
                              controller.skinProblemData[index]
                          ? AppColor.green50
                          : null,
                      borderColor: controller.skinProblemSelect ==
                              controller.skinProblemData[index]
                          ? AppColor.green50
                          : AppColor.textColor,
                      textColor: AppColor.textColor,
                      onPressed: () {
                        controller.skinProblemSelect =
                            controller.skinProblemData[index];
                        if (index == 1) {
                          controller.skinProblemFirstSelect = null;
                        }
                        controller.update();
                      },
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller.skinProblemFirstData.length,
                        itemBuilder: (BuildContext context, int index) {
                          return customOutlineButton(
                            deactivate: controller.skinProblemSelect !=
                                controller.skinProblemData[0],
                            label: controller.skinProblemFirstData[index],
                            bgColor: controller.skinProblemFirstSelect ==
                                    controller.skinProblemFirstData[index]
                                ? AppColor.green50
                                : null,
                            borderColor: controller.skinProblemFirstSelect ==
                                    controller.skinProblemFirstData[index]
                                ? AppColor.green50
                                : AppColor.textColor,
                            textColor: AppColor.textColor,
                            onPressed: () {
                              controller.skinProblemFirstSelect =
                                  controller.skinProblemFirstData[index];
                              controller.skinProblemSelect =
                                  controller.skinProblemData[0];
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
