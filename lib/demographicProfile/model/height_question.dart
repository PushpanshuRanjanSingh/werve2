import 'package:flutter/material.dart';
import 'package:werve/components/custom_outlined_button.dart';
import 'package:werve/components/custom_text_button.dart';
import 'package:werve/components/custom_text_theme.dart';
import 'package:werve/constant/color.dart';
import 'package:werve/constant/common_widget.dart';
import 'package:werve/constant/custom_text.dart';
import 'package:werve/demographicProfile/controller/demographic_profile_controller.dart';

Widget heightQuestion(DemographicProfileController controller) => Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            customTextFullWidth("Tell us about your Height",
                style: CustomTextStyle.fadeText2(fontWeight: FontWeight.bold)),
            vGap(height: 20),
            customText(controller.isFt ? "Ft" : "cms",
                style: CustomTextStyle.fadeText1(
                  fontSize: 20,
                )),
            vGap(),
            /**/
            controller.isFt
                ? Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 4),
                        color: AppColor.grey,
                        height: 64,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.heightInFeet.length,
                            itemBuilder: (BuildContext context, int index) {
                              return customTextButton(
                                  onPressed: () {
                                    controller.heightFt =
                                        controller.heightInFeet[index];
                                    controller.calculateHeight();
                                    controller.update();
                                  },
                                  label:
                                      controller.heightInFeet[index].toString(),
                                  textColor: controller.heightFt ==
                                          controller.heightInFeet[index]
                                      ? Colors.white
                                      : null);
                            }),
                      ),
                      vGap(height: 35),
                      customText("Inch",
                          style: CustomTextStyle.fadeText1(
                            fontSize: 20,
                          )),
                      vGap(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 4),
                        color: AppColor.grey,
                        height: 64,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.heightInInch.length,
                            itemBuilder: (BuildContext context, int index) {
                              return customTextButton(
                                  onPressed: () {
                                    controller.heightIn =
                                        controller.heightInInch[index];
                                    controller.calculateHeight();
                                    controller.update();
                                  },
                                  label:
                                      controller.heightInInch[index].toString(),
                                  textColor: controller.heightIn ==
                                          controller.heightInInch[index]
                                      ? Colors.white
                                      : null);
                            }),
                      ),
                    ],
                  )
                : Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
                    color: AppColor.grey,
                    height: 64,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.heightInCms.length,
                        itemBuilder: (BuildContext context, int index) {
                          return customTextButton(
                              onPressed: () {
                                controller.heightCms =
                                    controller.heightInCms[index];
                                controller.calculateHeight();
                                controller.update();
                              },
                              label: controller.heightInCms[index].toString(),
                              textColor: controller.heightCms ==
                                      controller.heightInCms[index]
                                  ? Colors.white
                                  : null);
                        }),
                  ),
            vGap(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customOutlineButton(
                    onPressed: () {
                      controller.toggleToFt();
                    },
                    label: "Ft",
                    next: false,
                    radius: 3,
                    borderColor: Colors.grey.shade300,
                    bgColor: controller.isFt ? AppColor.greyBG : null,
                    textColor: controller.isFt ? AppColor.textColor : null),
                customOutlineButton(
                    onPressed: () {
                      controller.toggleToCm();
                    },
                    label: "cms",
                    next: true,
                    radius: 3,
                    borderColor: Colors.grey.shade300,
                    bgColor: controller.isFt ? null : AppColor.greyBG,
                    textColor: controller.isFt ? null : AppColor.textColor),
              ],
            )
          ],
        ),
      ),
    );
