import 'package:werve/export.dart';

Widget wantSnack(HabitNBehaviorController controller) => Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customTextFullWidth("Do you snack?", bold: true),
                  vGap(height: 20),
                  ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.snackData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return customOutlineButton(
                          label: controller.snackData[index],
                          bgColor:
                              controller.eatSnack == controller.snackData[index]
                                  ? AppColor.green50
                                  : null,
                          borderColor:
                              controller.eatSnack == controller.snackData[index]
                                  ? AppColor.green50
                                  : AppColor.textColor,
                          textColor: AppColor.textColor,
                          onPressed: () {
                            controller.eatSnack = controller.snackData[index];
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
