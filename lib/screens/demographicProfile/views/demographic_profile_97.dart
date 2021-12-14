import 'package:werve/export.dart';

class DemographicQuestionnaire extends StatelessWidget {
  const DemographicQuestionnaire({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DemographicProfileController>(builder: (controller) {
      List<Widget> pages = [
        ageQuestion(controller),
        genderQuestion(controller),
        heightQuestion(controller),
        weightQuestion(controller),
        waistQuestion(controller),
        countryQuestion(controller),
      ];
      return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              vGap(),
              polygonTimeLine(1),
              vGap(height: 30),
              customTextFullWidth("Demographic Profile", bold: true),
              vGap(height: 40),
              Expanded(
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: controller.pageController,
                  children: pages,
                ),
              ),

              // const Spacer(),
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
                      "${controller.demographicStep.round().toInt()}% Complete",
                      style: Theme.of(Get.context!)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 12, fontWeight: FontWeight.w300)),
                  vGap(height: 2),
                  StepCounter(
                      currentStep: controller.demographicStep.round().toInt(),
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
