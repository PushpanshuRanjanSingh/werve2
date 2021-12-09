import 'package:flutter/material.dart';
import 'package:werve/components/custom_outlined_button.dart';
import 'package:werve/constant/color.dart';
import 'package:werve/constant/common_widget.dart';
import 'package:werve/constant/custom_text.dart';
import 'package:werve/demographicProfile/controller/demographic_profile_controller.dart';

Widget genderQuestion(DemographicProfileController controller) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customTextFullWidth("Select your Gender", bold: true),
              vGap(height: 20),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.selectYourGender.length,
                  itemBuilder: (BuildContext context, int index) {
                    return customOutlineButton(
                      label: controller.selectYourGender[index],
                      bgColor: controller.gender ==
                              controller.selectYourGender[index]
                          ? AppColor.green50
                          : null,
                      borderColor: controller.gender ==
                              controller.selectYourGender[index]
                          ? AppColor.green50
                          : AppColor.textColor,
                      textColor: AppColor.textColor,
                      onPressed: () {
                        controller.gender = controller.selectYourGender[index];
                        controller.update();
                      },
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) => vGap())
            ],
          ),
        ),
      ),
    );
