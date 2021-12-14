import 'package:werve/export.dart';

class GoalFocusArea extends StatelessWidget {
  const GoalFocusArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GoalSettingController>(builder: (controller) {
      return SafeArea(
          child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
          child: Column(
            children: [
              Column(
                children: [
                  customTextFullWidth("Focus Area Selection", bold: true),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: customTextFullWidth("Choose your focus area"),
                  ),
                ],
              ),
              Expanded(
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            maxCrossAxisExtent: 200),
                    itemCount: controller.areaList.length,
                    itemBuilder: (BuildContext context, index) {
                      return gridCard(
                          selected: controller.areaList[index].isSelected,
                          onPressed: () {
                            controller.areaList[index].isSelected =
                                !controller.areaList[index].isSelected;
                            controller.update();
                          },
                          image: controller.areaList[index].image,
                          label: controller.areaList[index].label,
                          color: controller.areaList[index].color);
                    }),
              ),
              controller.areaList.any((element) => element.isSelected == true)
                  ? OutlinedButton(
                      onPressed: () {
                        Get.to(() => const FitnessLevel());
                      },
                      child: customTextFullWidth(
                        "Next",
                        bold: true,
                        style: CustomTextStyle.fadeText2(
                            textColor: AppColor.white),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          primary: AppColor.blueTextColor,
                          elevation: 0,
                          backgroundColor: AppColor.blueTextColor,
                          shadowColor: null),
                    )
                  : OutlinedButton(
                      onPressed: () {},
                      child: customTextFullWidth(
                        "Auto Suggest “focus area” for me",
                        bold: true,
                        style: CustomTextStyle.fadeText2(
                            textColor: AppColor.golden),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          primary: AppColor.white,
                          elevation: 0,
                          shadowColor: null),
                    ),
            ],
          ),
        ),
      ));
    });
  }
}
