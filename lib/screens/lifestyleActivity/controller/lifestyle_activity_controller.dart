import 'package:werve/export.dart';

class LifeStyleActivityController extends GetxController {
  String? doYouExerciseSelect;
  String? doYouSmokeSelect;
  String? servingOfAlcoholSelect;
  String? averageSleepSelect;
  String? feelEnthusiasticSelect;
  String? unplugFromWorkSelect;
  String? spendTimeSelect;

  List<String> doYouExerciseData = doYouExercise;
  List<String> doYouSmokeData = doYouSmoke;
  List<String> servingOfAlcoholData = servingOfAlcohol;
  List<String> averageSleepData = averageSleep;
  List<String> feelEnthusiasticData = feelEnthusiastic;
  List<dynamic> unplugFromWorkData = workingMood;
  List<String> spendTimeData = spendTime;


  PageController pageController = PageController();
  double step = 14.28;

  void nextPage(length) {
    if (pageController.page!.toInt() < length - 1) {
      pageController.animateToPage(pageController.page!.toInt() + 1,
          duration: const Duration(milliseconds: 10), curve: Curves.easeIn);
      step = step + 14.28;
      update();
    } else if (pageController.page!.toInt() == length - 1) {
      Get.off(() => const ProfileStepFifth());
    }
  }

  void previousPage() {
    if (pageController.page!.toInt() > 0) {
      pageController.animateToPage(pageController.page!.toInt() - 1,
          duration: const Duration(milliseconds: 10), curve: Curves.easeIn);
      step = step - 14.28;
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
    if (step >= 0 && step <= 24) {
      return colorList[0];
    } else if (step >= 25 && step <= 48) {
      return colorList[1];
    } else if (step >= 50 && step < 90) {
      return colorList[2];
    } else if (step >= 90 && step <= 101) {
      return colorList[3];
    } else {
      return AppColor.greyBG;
    }
  }

}
