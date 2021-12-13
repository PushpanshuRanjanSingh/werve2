import 'package:werve/export.dart';

Widget countryQuestion(DemographicProfileController controller) => Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
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
