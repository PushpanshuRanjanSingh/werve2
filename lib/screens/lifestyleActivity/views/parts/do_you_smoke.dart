import 'package:werve/export.dart';

Widget doYouSmokeMethod(LifeStyleActivityController controller) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Center(
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customTextFullWidth("Do you smoke?", bold: true),
          vGap(height: 20),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.doYouSmokeData.length,
              itemBuilder: (BuildContext context, int index) {
                return customOutlineButton(
                  label: controller.doYouSmokeData[index],
                  bgColor: controller.doYouSmokeSelect ==
                      controller.doYouSmokeData[index]
                      ? AppColor.green50
                      : null,
                  borderColor: controller.doYouSmokeSelect ==
                      controller.doYouSmokeData[index]
                      ? AppColor.green50
                      : AppColor.textColor,
                  textColor: AppColor.textColor,
                  onPressed: () {
                    controller.doYouSmokeSelect = controller.doYouSmokeData[index];
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
