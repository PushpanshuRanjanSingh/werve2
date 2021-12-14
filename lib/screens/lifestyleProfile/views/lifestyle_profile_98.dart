import 'package:werve/export.dart';

class LifestyleQuestionnaire extends StatelessWidget {
  const LifestyleQuestionnaire({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LifeStyleProfileController>(builder: (controller) {
      List<Widget> pages = [
        yourJobType(controller),
        yourJobTypeCategory(controller)
      ];
      return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              vGap(),
              polygonTimeLine(2),
              vGap(height: 30),
              customTextFullWidth("Lifestyle", bold: true),
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
                            if (controller.index == null ||
                                controller.index == 4 ||
                                controller.index == 5) {
                              Get.to(() => const ProfileStepThird());
                            } else {
                              controller.nextPage(pages.length);
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  customText(
                      "${controller.lifestyleStep.round().toInt()}% Complete",
                      style: Theme.of(Get.context!)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 12, fontWeight: FontWeight.w300)),
                  vGap(height: 2),
                  StepCounter(
                      currentStep: controller.lifestyleStep.round().toInt(),
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
