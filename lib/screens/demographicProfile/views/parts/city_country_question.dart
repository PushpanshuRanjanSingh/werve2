import 'package:werve/export.dart';

Widget countryQuestion(DemographicProfileController controller) => Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            if(controller.city.isNotEmpty && controller.animation!=null || controller.city.isNotEmpty )
            AnimatedBuilder(
              builder: (BuildContext context, Widget? child) =>
               Transform.translate(
                 offset: Offset(0,-controller.animationHandler!.value),
                 child: Column(
                  children: [
                    imageAsset(Assets.awardIcon, height: 68, width: 68),
                    vGap(height: 2),
                    customTextFullWidth("Great finish, YuMan!",
                        style: Theme.of(Get.context!)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: AppColor.greenTextColor)),
                  ],
              ),
               ), animation: controller.animation!,
              
            ),

            vGap(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customTextFullWidth("Select your City and Country",
                      bold: true),
                  vGap(height: 20),
                  dropdownWithSearch(
                      list: controller.countryCityModel.data,
                      hintText: "Country*",
                      itemAsString: (country) => country?.country,
                      onChange: (value) {
                        controller.cityList = [];
                        controller.setCountry(value);
                      }),
                  vGap(height: 20),
                  dropdownWithSearch(
                      list: controller.cityList,
                      hintText: "City*",
                      itemAsString: (city) => city,
                      onChange: (value) {
                        controller.setCity(value);
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
