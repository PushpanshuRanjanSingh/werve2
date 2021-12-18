import 'package:werve/export.dart';

Widget indicateWeightChangeMethod(LifeStyleSecondController controller) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Center(
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customTextFullWidth("Have any life events led to weight gain in the last 6 months", bold: true),
          vGap(height: 20),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.indicateWeightChangeData.length,
              itemBuilder: (BuildContext context, int index) {
                return customOutlineButton(
                  label: controller.indicateWeightChangeData[index],
                  bgColor: controller.indicateWeightChangeSelect ==
                      controller.indicateWeightChangeData[index]
                      ? AppColor.green50
                      : null,
                  borderColor: controller.indicateWeightChangeSelect ==
                      controller.indicateWeightChangeData[index]
                      ? AppColor.green50
                      : AppColor.textColor,
                  textColor: AppColor.textColor,
                  onPressed: () {
                    controller.indicateWeightChangeSelect = controller.indicateWeightChangeData[index];
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
