import 'package:werve/export.dart';

Widget takePreventativeMethod(LifeStyleSecondController controller) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Center(
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customTextFullWidth("I am aware of the occupational hazard my job involves (stress, pain, fatigue, etc.) & I take preventive measures.", bold: true),
          vGap(height: 20),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.takePreventativeMeasuresData.length,
              itemBuilder: (BuildContext context, int index) {
                return customOutlineButton(
                  label: controller.takePreventativeMeasuresData[index],
                  bgColor: controller.takePreventativeMeasuresSelect ==
                      controller.takePreventativeMeasuresData[index]
                      ? AppColor.green50
                      : null,
                  borderColor: controller.takePreventativeMeasuresSelect ==
                      controller.takePreventativeMeasuresData[index]
                      ? AppColor.green50
                      : AppColor.textColor,
                  textColor: AppColor.textColor,
                  onPressed: () {
                    controller.takePreventativeMeasuresSelect = controller.takePreventativeMeasuresData[index];
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
