import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:werve/constant/color.dart';

import 'data/static_data.dart';

class DemographicProfileController extends GetxController {
  int heightFt = 0;
  int heightIn = 0;
  int heightCms = 0;
  int weightLb = 0;
  int weightKg = 0;
  int demographicStep = 12;
  int? selectedIndex;
  int? waistCircumference;
  bool isFt = true;
  bool isKg = true;
  String? ageRange;
  String? gender;
  String? country;
  String? city;

  PageController pageController = PageController();

  List<String> selectYourAgeGroup = [
    "Below 18 yrs",
    "18 - 26 yrs",
    "26 - 38 yrs",
    "38 - 54 yrs",
    "54+ yrs"
  ];

  List<String> selectYourGender = ["Male", "Female", "Other"];

  List<int> heightInFeet = heightInFeetData;
  List<int> heightInInch = heightInInchData;
  List<int> weightInLbs = weightInLbsData;
  List<int> weightInKg = weightInKgData;
  List<int> heightInCms = heightInCmsData;

  void toggleToFt() {
    isFt = true;
    heightCms = 0;
    update();
  }

  void toggleToCm() {
    isFt = false;
    heightFt = 0;
    update();
  }

  void toggleToKg() {
    isKg = true;
    update();
  }

  void toggleToLbs() {
    isKg = false;
    update();
  }

  void calculateHeight() {
    if (heightFt != 0) {
      heightCms = ((heightFt * 30.48) + (heightIn * 2.54)).ceil().toInt();
    } else if (heightCms != 0) {
      double inch = heightCms / 2.54;
      double feet = inch / 12;
      heightFt = feet.toInt();
      heightIn = ((feet - heightFt) * 100).toInt();
    }
    update();
  }

  void calculateWeight() {
    if (weightKg != 0) {
      weightLb = (weightKg * 2.205).ceil().toInt();
    } else if (weightLb != 0) {
      weightKg = (weightLb / 2.205).ceil().toInt();
    }
    update();
  }

  void nextPage(length) {
    if (pageController.page!.toInt() < length - 1) {
      pageController.animateToPage(pageController.page!.toInt() + 1,
          duration: const Duration(milliseconds: 10), curve: Curves.easeIn);
      demographicStep = demographicStep + 12;
      update();
    }
  }

  void previousPage() {
    if (pageController.page!.toInt() > 0) {
      pageController.animateToPage(pageController.page!.toInt() - 1,
          duration: const Duration(milliseconds: 10), curve: Curves.easeIn);
      demographicStep = demographicStep - 12;
      update();
    }
  }

  List<Color> colorList = [
    HexColor("#FFDA2D"),
    HexColor("#FB9C4C"),
    HexColor("#A3E8AE"),
    HexColor("#59C36A"),
  ];

  Color newColor() {
    if (demographicStep >= 0 && demographicStep <= 24) {
      return colorList[0];
    } else if (demographicStep >= 25 && demographicStep <= 48) {
      return colorList[1];
    } else if (demographicStep >= 50 && demographicStep < 90) {
      return colorList[2];
    } else if (demographicStep >= 90 && demographicStep <= 100) {
      return colorList[3];
    } else {
      return AppColor.greyBG;
    }
  }
}
