import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:werve/components/custom_outlined_button.dart';
import 'package:werve/constant/assets.dart';
import 'package:werve/constant/color.dart';
import 'package:werve/constant/common_widget.dart';
import 'package:werve/constant/custom_text.dart';
import 'package:werve/demographicProfile/controller/demographic_profile_controller.dart';

Widget ageQuestion(DemographicProfileController controller) => Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  imageAsset(Assets.greenStar, height: 68, width: 68),
                  vGap(height: 2),
                  customTextFullWidth(
                      "Congratulations on taking the first step!",
                      style: Theme.of(Get.context!)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: AppColor.greenTextColor)),
                ],
              ),
            ),
            vGap(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customTextFullWidth("Select your age group", bold: true),
                  vGap(height: 20),
                  ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.selectYourAgeGroup.length,
                      itemBuilder: (BuildContext context, int index) {
                        return customOutlineButton(
                          label: controller.selectYourAgeGroup[index],
                          bgColor: controller.ageRange ==
                                  controller.selectYourAgeGroup[index]
                              ? AppColor.green50
                              : null,
                          borderColor: controller.ageRange ==
                                  controller.selectYourAgeGroup[index]
                              ? AppColor.green50
                              : AppColor.textColor,
                          textColor: AppColor.textColor,
                          onPressed: () {
                            controller.ageRange =
                                controller.selectYourAgeGroup[index];
                            controller.update();
                          },
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          vGap())
                ],
              ),
            ),
          ],
        ),
      ),
    );
