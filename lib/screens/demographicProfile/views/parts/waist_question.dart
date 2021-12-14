import 'package:werve/export.dart';

Widget waistQuestion(DemographicProfileController controller) => Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            customTextFullWidth("Waist Circumference",
                style: CustomTextStyle.fadeText2(fontWeight: FontWeight.bold)),
            vGap(height: 20),
            customText(controller.isFt ? "Inches" : "Cms",
                style: CustomTextStyle.fadeText1(
                  fontSize: 20,
                )),
            vGap(),
            /**/
            controller.isFt
                ? Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
                    color: AppColor.grey,
                    height: 64,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.waistInIn.length,
                        itemBuilder: (BuildContext context, int index) {
                          return customTextButton(
                              onPressed: () {
                                controller.waistCircumferenceCms = 0;
                                controller.waistCircumferenceIn =
                                    controller.waistInIn[index];
                                controller.calculateWaist();
                                controller.update();
                              },
                              label: controller.waistInIn[index].toString(),
                              textColor: controller.waistCircumferenceIn ==
                                      controller.waistInIn[index]
                                  ? Colors.white
                                  : null);
                        }),
                  )
                : Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
                    color: AppColor.grey,
                    height: 64,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.waistInCms.length,
                        itemBuilder: (BuildContext context, int index) {
                          return customTextButton(
                              onPressed: () {
                                controller.waistCircumferenceIn = 0;
                                controller.waistCircumferenceCms =
                                    controller.waistInCms[index];
                                controller.calculateWaist();
                                controller.update();
                              },
                              label: controller.waistInCms[index].toString(),
                              textColor: controller.waistCircumferenceCms ==
                                      controller.waistInCms[index]
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
                    label: "Inches",
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
