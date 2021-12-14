import 'package:werve/export.dart';

Widget howOftenWantToEat(HabitNBehaviorController controller) => Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customTextFullWidth(
                      "When do you typically feel an urge to snack",
                      bold: true),
                  vGap(height: 20),
                  ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.urgeToSnackData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return customOutlineButton(
                          label: controller.urgeToSnackData[index],
                          bgColor: controller.urgeToEatSnack ==
                                  controller.urgeToSnackData[index]
                              ? AppColor.green50
                              : null,
                          borderColor: controller.urgeToEatSnack ==
                                  controller.urgeToSnackData[index]
                              ? AppColor.green50
                              : AppColor.textColor,
                          textColor: AppColor.textColor,
                          onPressed: () {
                            controller.urgeToEatSnack =
                                controller.urgeToSnackData[index];
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
