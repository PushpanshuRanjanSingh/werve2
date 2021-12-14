import 'package:werve/export.dart';

class LifeStyleProfileController extends GetxController {
  double lifestyleStep = 50;
  PageController pageController = PageController();
  int? index;

  String? jobProfile;
  String? jobType;

  List<String> jobTypes = jobList;
  List<String> deskJobTypes = deskJobList;
  List<String> salesJobTypes = salesJobList;
  List<String> siteJobTypes = siteJobList;
  List<String> travelJobTypes = travelJobList;

  List<String> toogleCategory(index) {
    switch (index) {
      case 0:
        return deskJobTypes;
      case 1:
        return siteJobTypes;
      case 2:
        return salesJobList;
      case 3:
        return travelJobList;
      default:
        return [];
    }
  }

  void nextPage(length) {
    if (pageController.page!.toInt() < length - 1) {
      pageController.animateToPage(pageController.page!.toInt() + 1,
          duration: const Duration(milliseconds: 10), curve: Curves.easeIn);
      lifestyleStep = lifestyleStep + 50;
      update();
    } else if (pageController.page!.toInt() == length - 1) {
      Get.off(() => const ProfileStepThird());
    }
  }

  void previousPage() {
    if (pageController.page!.toInt() > 0) {
      pageController.animateToPage(pageController.page!.toInt() - 1,
          duration: const Duration(milliseconds: 10), curve: Curves.easeIn);
      lifestyleStep = lifestyleStep - 50;
      update();
    }
  }

  List<Color> colorList = [
    HexColor("#A3E8AE"),
    HexColor("#59C36A"),
  ];

  Color newColor() {
    if (lifestyleStep >= 0 && lifestyleStep <= 50) {
      return colorList[0];
    } else if (lifestyleStep >= 51 && lifestyleStep <= 101) {
      return colorList[1];
    } else {
      return AppColor.greyBG;
    }
  }
}
