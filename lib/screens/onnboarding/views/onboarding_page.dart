import 'package:werve/export.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: PageView.builder(
                    controller: controller.pageController,
                    onPageChanged: controller.selectedPageIndex,
                    itemCount: controller.onboardingPages.length,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(),
                          Column(
                            children: [
                              imageAsset(
                                  controller.onboardingPages[index].imageAsset,
                                  height: 200,
                                  width: 200),
                              vGap(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                    controller.onboardingPages.length,
                                    (index) => Obx(() {
                                          return Container(
                                            margin: const EdgeInsets.all(4),
                                            width: 12,
                                            height: 12,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: AppColor.grey,
                                                  width: 2),
                                              color: controller
                                                          .selectedPageIndex
                                                          .value ==
                                                      index
                                                  ? Colors.grey
                                                  : Colors.white,
                                              shape: BoxShape.circle,
                                            ),
                                          );
                                        })),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                customText(
                                    controller.onboardingPages[index].title,
                                    bold: true,
                                    style:
                                        CustomTextStyle.fadeText2(fontSize: 22)),
                                vGap(height: 20),
                                customText(
                                    controller.onboardingPages[index].description,
                                    maxLines: 4,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyle.fadeText1(
                                        fontSize: 18,
                                        textColor: AppColor.blueTextColor)),
                                vGap(height: 20),
                                customText(
                                    controller.onboardingPages[index].proverb,
                                    bold: true,
                                    style:
                                        CustomTextStyle.fadeText2(fontSize: 18)),
                              ],
                            ),
                          ),
                          const SizedBox(),
                        ],
                      );
                    }),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: AppColor.buttonColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0))),
                  child: customText(
                      controller.selectedPageIndex.value == 3 ? "NEXT" : "SKIP",
                      style: CustomTextStyle.fadeText2(
                          fontSize: 18, textColor: AppColor.white)),
                  onPressed: () {
                    controller.forwardAction();
                    debugPrint(controller.onboardingPages.length.toString());
                    debugPrint(controller.selectedPageIndex.value.toString());
                    debugPrint(
                        controller.pageController.page!.toInt().toString());
                  },
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
