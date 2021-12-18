import 'package:werve/export.dart';

Widget spendTimeMethod(LifeStyleActivityController controller) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Center(
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customTextFullWidth("I spend my free time doing", bold: true),
          vGap(height: 20),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.spendTimeData.length,
              itemBuilder: (BuildContext context, int index) {
                return customOutlineButton(
                  label: controller.spendTimeData[index],
                  bgColor: controller.spendTimeSelect ==
                      controller.spendTimeData[index]
                      ? AppColor.green50
                      : null,
                  borderColor: controller.spendTimeSelect ==
                      controller.spendTimeData[index]
                      ? AppColor.green50
                      : AppColor.textColor,
                  textColor: AppColor.textColor,
                  onPressed: () {
                    controller.spendTimeSelect = controller.spendTimeData[index];
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
