import 'package:werve/export.dart';

Widget yourJobType(LifeStyleProfileController controller) => Center(
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
                  vGap(height: 20),
                  ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.jobTypes.length,
                      itemBuilder: (BuildContext context, int index) {
                        return customOutlineButton(
                          label: controller.jobTypes[index],
                          bgColor:
                              controller.jobType == controller.jobTypes[index]
                                  ? AppColor.green50
                                  : null,
                          borderColor:
                              controller.jobType == controller.jobTypes[index]
                                  ? AppColor.green50
                                  : AppColor.textColor,
                          textColor: AppColor.textColor,
                          onPressed: () {
                            controller.jobType = controller.jobTypes[index];
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
