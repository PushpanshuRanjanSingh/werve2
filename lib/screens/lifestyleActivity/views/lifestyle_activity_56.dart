import 'package:werve/export.dart';
import 'package:werve/screens/lifestyleActivity/views/parts/do_you_exercise.dart';

class LifeStyleActivity extends StatelessWidget {
  const LifeStyleActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LifeStyleActivityController>(builder: (controller) {
      List<Widget> pages = [
        doYouExerciseMethod(controller),
        doYouSmokeMethod(controller),
        servingOfAlcoholMethod(controller),
        averageSleepMethod(controller),
        feelEnthusiasticMethod(controller),
        workingMoodMethod(controller),
        spendTimeMethod(controller)
      ];
      return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              vGap(),
              polygonTimeLine(1),
              vGap(height: 30),
              customTextFullWidth("Lifestyle / Activity", bold: true),
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
                      "${controller.step.round().toInt()}% Complete",
                      style: Theme.of(Get.context!)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 12, fontWeight: FontWeight.w300)),
                  vGap(height: 2),
                  StepCounter(
                      currentStep: controller.step.round().toInt(),
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
