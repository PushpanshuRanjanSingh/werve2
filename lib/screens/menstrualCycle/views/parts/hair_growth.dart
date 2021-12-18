import 'package:werve/export.dart';

Widget hairGrowthMethod(MenstrualCycleController controller) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customTextFullWidth(
                  "Have you had any hair changes or extra hair growth?",
                  bold: true),
              vGap(height: 20),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.hairGrowthData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return customOutlineButton(
                      label: controller.hairGrowthData[index],
                      bgColor: controller.hairGrowthSelect ==
                              controller.hairGrowthData[index]
                          ? AppColor.green50
                          : null,
                      borderColor: controller.hairGrowthSelect ==
                              controller.hairGrowthData[index]
                          ? AppColor.green50
                          : AppColor.textColor,
                      textColor: AppColor.textColor,
                      onPressed: () {
                        controller.hairGrowthSelect =
                            controller.hairGrowthData[index];
                        if (index == 1) {
                          controller.hairGrowthFirstSelect = null;
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
                        itemCount: controller.hairGrowthFirstData.length,
                        itemBuilder: (BuildContext context, int index) {
                          return customOutlineButton(
                            label: controller.hairGrowthFirstData[index],
                            bgColor: controller.hairGrowthFirstSelect ==
                                    controller.hairGrowthFirstData[index]
                                ? AppColor.green50
                                : null,
                            borderColor: controller
                                        .hairGrowthFirstSelect ==
                                    controller.hairGrowthFirstData[index]
                                ? AppColor.green50
                                : AppColor.textColor,
                            textColor: AppColor.textColor,
                            onPressed: () {
                              controller.hairGrowthFirstSelect =
                                  controller.hairGrowthFirstData[index];
                              controller.hairGrowthSelect =
                                  controller.hairGrowthData[0];
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
