import 'package:werve/export.dart';

Widget workingMoodMethod(LifeStyleActivityController controller) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Center(
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customTextFullWidth("Describe your present working mood", bold: true),
          vGap(height: 20),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.unplugFromWorkData.length,
              itemBuilder: (BuildContext context, int index) {
                return customOutlineButton(
                  label: controller.unplugFromWorkData[index][0],
                  bgColor: controller.unplugFromWorkSelect ==
                      controller.unplugFromWorkData[index][0]
                      ? AppColor.green50
                      : null,
                  borderColor: controller.unplugFromWorkSelect ==
                      controller.unplugFromWorkData[index][0]
                      ? AppColor.green50
                      : AppColor.textColor,
                  textColor: AppColor.textColor,
                  onPressed: () {
                    controller.unplugFromWorkSelect = controller.unplugFromWorkData[index][0];
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
