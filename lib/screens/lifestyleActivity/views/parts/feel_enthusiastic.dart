import 'package:werve/export.dart';

Widget feelEnthusiasticMethod(LifeStyleActivityController controller) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Center(
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customTextFullWidth("Most days, I feel enthusiastic, energetic & fully charged", bold: true),
          vGap(height: 20),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.feelEnthusiasticData.length,
              itemBuilder: (BuildContext context, int index) {
                return customOutlineButton(
                  label: controller.feelEnthusiasticData[index],
                  bgColor: controller.feelEnthusiasticSelect ==
                      controller.feelEnthusiasticData[index]
                      ? AppColor.green50
                      : null,
                  borderColor: controller.feelEnthusiasticSelect ==
                      controller.feelEnthusiasticData[index]
                      ? AppColor.green50
                      : AppColor.textColor,
                  textColor: AppColor.textColor,
                  onPressed: () {
                    controller.feelEnthusiasticSelect = controller.feelEnthusiasticData[index];
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
