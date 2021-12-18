import 'package:werve/export.dart';

Widget doYouExerciseMethod(LifeStyleActivityController controller) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Center(
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customTextFullWidth("Do you exercise?", bold: true),
          vGap(height: 20),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.doYouExerciseData.length,
              itemBuilder: (BuildContext context, int index) {
                return customOutlineButton(
                  label: controller.doYouExerciseData[index],
                  bgColor: controller.doYouExerciseSelect ==
                      controller.doYouExerciseData[index]
                      ? AppColor.green50
                      : null,
                  borderColor: controller.doYouExerciseSelect ==
                      controller.doYouExerciseData[index]
                      ? AppColor.green50
                      : AppColor.textColor,
                  textColor: AppColor.textColor,
                  onPressed: () {
                    controller.doYouExerciseSelect = controller.doYouExerciseData[index];
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
