import 'package:werve/export.dart';

Widget nonWorkHoursMethod(LifeStyleSecondController controller) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customTextFullWidth(
                  "How many non-work hours per day do you spend watching television shows, playing video games, or using a computer/tablet?",
                  bold: true),
              vGap(height: 20),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.nonWorkHoursData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return customOutlineButton(
                      label: controller.nonWorkHoursData[index],
                      bgColor: controller.nonWorkHoursSelect ==
                              controller.nonWorkHoursData[index]
                          ? AppColor.green50
                          : null,
                      borderColor: controller.nonWorkHoursSelect ==
                              controller.nonWorkHoursData[index]
                          ? AppColor.green50
                          : AppColor.textColor,
                      textColor: AppColor.textColor,
                      onPressed: () {
                        controller.nonWorkHoursSelect =
                            controller.nonWorkHoursData[index];
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
