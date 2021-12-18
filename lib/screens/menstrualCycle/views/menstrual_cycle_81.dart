import 'package:werve/export.dart';
import 'package:werve/screens/menstrualCycle/views/parts/diabetes.dart';
import 'package:werve/screens/menstrualCycle/views/parts/hair_growth.dart';
import 'package:werve/screens/menstrualCycle/views/parts/health_weight.dart';
import 'package:werve/screens/menstrualCycle/views/parts/skin_problem.dart';
import 'parts/irregular_period_method.dart';


class MenstrualCycle extends StatelessWidget {
  const MenstrualCycle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MenstrualCycleController>(builder: (controller) {
      List<Widget> pages = [
        irregularPeriodMethod(controller),
        diabetesMethod(controller),
        skinProblemMethod(controller),
        hairGrowthMethod(controller),
        healthWeightMethod(controller),

      ];
      return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              vGap(),
              polygonTimeLine(3),
              vGap(height: 30),
              customTextFullWidth("PCOD / Menstrual Cycle", bold: true),
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
