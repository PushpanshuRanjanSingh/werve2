import 'package:werve/export.dart';

class LifeStyleSecond extends StatelessWidget {
  const LifeStyleSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LifeStyleSecondController>(builder: (controller) {
      List<Widget> pages = [
        skipMealMethod(controller),
        weightChangeMethod(controller),
        easyToGiveUpMethod(controller),
        takePreventativeMethod(controller),
        nonWorkHoursMethod(controller),
        adjustToChangeMethod(controller),
        unplugFromWorkMethod(controller),
        comfortableEnjoyMethod(controller),
      ];
      return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              vGap(),
              polygonTimeLine(2),
              vGap(height: 30),
              customTextFullWidth("Lifestyle - Habits & Behaviours", bold: true),
              vGap(height: 40),
              Expanded(
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: controller.pageController,
                  children: pages,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customOutlineButton(
                          textColor: AppColor.buttonColor,
                          label: 'Back',
                          next: false,
                          onPressed: () {
                            controller.previousPage();
                          },
                        ),
                        customOutlineButton(
                          textColor: AppColor.buttonColor,
                          label: 'Next',
                          next: true,
                          onPressed: () {
                            controller.nextPage(pages.length);
                          },
                        ),
                      ],
                    ),
                  ),
                  customText(
                      "${controller.activityStep.round().toInt()}% Complete",
                      style: Theme.of(Get.context!)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 12, fontWeight: FontWeight.w300)),
                  vGap(height: 2),
                  StepCounter(
                      currentStep: controller.activityStep.round().toInt(),
                      color: controller.newColor()),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
