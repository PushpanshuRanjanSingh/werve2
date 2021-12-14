import 'package:werve/export.dart';

Widget yourJobTypeCategory(LifeStyleProfileController controller) => Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customTextFullWidth("Select your Job", bold: true),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                        color: AppColor.greenTextColor,
                        borderRadius: BorderRadius.circular(4)),
                    height: 50,
                    child: Center(
                      child: customText(controller.jobType ?? "",
                          style: CustomTextStyle.fadeText2(
                              textColor: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  customTextFullWidth("Category", bold: true),
                  vGap(height: 20),
                  ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount:
                          controller.toogleCategory(controller.index).length,
                      itemBuilder: (BuildContext context, int index) {
                        return customOutlineButton(
                          label: controller
                              .toogleCategory(controller.index)[index],
                          bgColor: controller.jobProfile ==
                                  controller
                                      .toogleCategory(controller.index)[index]
                              ? AppColor.green50
                              : null,
                          borderColor: controller.jobProfile ==
                                  controller
                                      .toogleCategory(controller.index)[index]
                              ? AppColor.green50
                              : AppColor.textColor,
                          textColor: AppColor.textColor,
                          onPressed: () {
                            controller.jobProfile = controller
                                .toogleCategory(controller.index)[index];
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
