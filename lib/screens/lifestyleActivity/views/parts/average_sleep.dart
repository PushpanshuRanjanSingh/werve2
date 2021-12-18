import 'package:werve/export.dart';

Widget averageSleepMethod(LifeStyleActivityController controller) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Center(
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customTextFullWidth("On an average! sleep for", bold: true),
          vGap(height: 20),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.averageSleepData.length,
              itemBuilder: (BuildContext context, int index) {
                return customOutlineButton(
                  label: controller.averageSleepData[index],
                  bgColor: controller.averageSleepSelect ==
                      controller.averageSleepData[index]
                      ? AppColor.green50
                      : null,
                  borderColor: controller.averageSleepSelect ==
                      controller.averageSleepData[index]
                      ? AppColor.green50
                      : AppColor.textColor,
                  textColor: AppColor.textColor,
                  onPressed: () {
                    controller.averageSleepSelect = controller.averageSleepData[index];
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
