import 'package:werve/export.dart';

Widget easyToGiveUpMethod(LifeStyleSecondController controller) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Center(
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customTextFullWidth("Usually, when I make a wrong choice, it can be easy for me to give up", bold: true),
          vGap(height: 20),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.easyToGiveUPData.length,
              itemBuilder: (BuildContext context, int index) {
                return customOutlineButton(
                  label: controller.easyToGiveUPData[index],
                  bgColor: controller.easyToGiveUPSelect ==
                      controller.easyToGiveUPData[index]
                      ? AppColor.green50
                      : null,
                  borderColor: controller.easyToGiveUPSelect ==
                      controller.easyToGiveUPData[index]
                      ? AppColor.green50
                      : AppColor.textColor,
                  textColor: AppColor.textColor,
                  onPressed: () {
                    controller.easyToGiveUPSelect = controller.easyToGiveUPData[index];
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
