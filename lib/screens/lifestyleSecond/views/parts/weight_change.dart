import 'package:werve/export.dart';

Widget weightChangeMethod(LifeStyleSecondController controller) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Center(
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customTextFullWidth("Indicate your weight change within the past six months", bold: true),
          vGap(height: 20),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.weightChangeData.length,
              itemBuilder: (BuildContext context, int index) {
                return customOutlineButton(
                  label: controller.weightChangeData[index],
                  bgColor: controller.weightChangeSelect ==
                      controller.weightChangeData[index]
                      ? AppColor.green50
                      : null,
                  borderColor: controller.weightChangeSelect ==
                      controller.weightChangeData[index]
                      ? AppColor.green50
                      : AppColor.textColor,
                  textColor: AppColor.textColor,
                  onPressed: () {
                    controller.weightChangeSelect = controller.weightChangeData[index];
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
