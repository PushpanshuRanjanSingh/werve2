import 'package:werve/export.dart';

class FitnessLevel extends StatelessWidget {
  const FitnessLevel({Key? key}) : super(key: key);

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
                  customTextFullWidth("Focus Area - Physical Health",
                      bold: true),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: customTextFullWidth("Select your fitness level"),
                  ),
                ],
              ),
              Expanded(
                child: Center(
                  child: ListView.builder(
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        for (var element in controller.levelList) {element.isSelected = false;}
                        controller.levelList[index].isSelected = true;

                        controller.update();
                      },
                      child: Container(
                        height: 80,
                        padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                        margin: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: controller.levelList[index].isSelected
                                ? AppColor.golden.withOpacity(0.2)
                                : AppColor.white,
                            borderRadius: BorderRadius.circular(100),
                            border:
                                Border.all(color: AppColor.golden, width: 2)),
                        child: Row(
                          children: [
                            Image.asset(controller.levelList[index].image),
                            hGap(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                customText(controller.levelList[index].title,
                                    style: CustomTextStyle.fadeText2(
                                        textColor: AppColor.pinkish),
                                    textAlign: TextAlign.start,
                                    bold: true),
                                customText(
                                  controller.levelList[index].subtitle,
                                  textAlign: TextAlign.start,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    shrinkWrap: true,
                    itemCount: controller.levelList.length,
                  ),
                ),
              )
            ],
          ),
        ),
      ));
    });
  }
}
