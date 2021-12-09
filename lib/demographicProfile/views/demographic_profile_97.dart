import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:werve/components/custom_outlined_button.dart';
import 'package:werve/components/step_step_counter.dart';
import 'package:werve/constant/color.dart';
import 'package:werve/constant/common_widget.dart';
import 'package:werve/constant/custom_text.dart';
import 'package:werve/demographicProfile/controller/demographic_profile_controller.dart';
import 'package:werve/demographicProfile/model/age_range_question.dart';
import 'package:werve/demographicProfile/model/gender_question.dart';
import 'package:werve/demographicProfile/model/height_question.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DemographicProfileController>(builder: (controller) {
      List<Widget> pages = [
        ageQuestion(controller),
        genderQuestion(controller),
        heightQuestion(controller),
      ];
      return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              vGap(),
              polygonTimeLine(),
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
                  customText("${controller.demographicStep}% Complete",
                      style: Theme.of(Get.context!)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 12, fontWeight: FontWeight.w300)),
                  vGap(height: 2),
                  StepCounter(
                      currentStep: controller.demographicStep,
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
