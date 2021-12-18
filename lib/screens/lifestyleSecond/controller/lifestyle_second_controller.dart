import 'package:werve/export.dart';

class LifeStyleSecondController extends GetxController {
  String? skipMealSelect;
  String? weightChangeSelect;
  String? indicateWeightChangeSelect;
  String? easyToGiveUPSelect;
  String? takePreventativeMeasuresSelect;
  String? nonWorkHoursSelect;
  String? adjustToChangeSelect;
  String? unplugFromWorkSelect;
  String? comfortableByEnjoySelect;

  List<String> skipMealData = skipMeal;
  List<String> weightChangeData = weightChange;
  List<String> indicateWeightChangeData = indicateWeightChange;
  List<String> easyToGiveUPData = easyToGiveUP;
  List<String> takePreventativeMeasuresData = takePreventativeMeasures;
  List<String> nonWorkHoursData = nonWorkHours;
  List<String> adjustToChangeData = adjustToChange;
  List<String> unplugFromWorkData = unplugFromWork;
  List<String> comfortableByEnjoyData = comfortableByEnjoy;

  PageController pageController = PageController();
  double activityStep = 12.5;

  void nextPage(length) {
    if (pageController.page!.toInt() < length - 1) {
      pageController.animateToPage(pageController.page!.toInt() + 1,
          duration: const Duration(milliseconds: 10), curve: Curves.easeIn);
      activityStep = activityStep + 12.5;
      update();
    } else if (pageController.page!.toInt() == length - 1) {
      Get.off(() => const ProfileStepSixth());
    }
  }

  void previousPage() {
    if (pageController.page!.toInt() > 0) {
      pageController.animateToPage(pageController.page!.toInt() - 1,
          duration: const Duration(milliseconds: 10), curve: Curves.easeIn);
      activityStep = activityStep - 12.5;
      update();
    }
  }

  List<Color> colorList = [
    HexColor("#A3E8AE"),
    HexColor("#59C36A"),
  ];

  Color newColor() {
    if (activityStep >= 0 && activityStep <= 50) {
      return colorList[0];
    } else if (activityStep >= 51 && activityStep <= 101) {
      return colorList[1];
    } else {
      return AppColor.greyBG;
    }
  }
}
