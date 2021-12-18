import 'package:werve/export.dart';

class MenstrualCycleController extends GetxController {
  String? irregularPeriodSelect;
  String? irregularPeriodFirstSelect;
  String? diabetesSelect;
  String? diabetesFirstSelect;
  String? skinProblemSelect;
  String? skinProblemFirstSelect;
  String? hairGrowthSelect;
  String? hairGrowthFirstSelect;
  String? healthWeightSelect;
  String? healthWeightFirstSelect;

  List<String> irregularPeriodData = irregularPeriod;
  List<String> irregularPeriodFirstData = irregularPeriodFirst;
  List<String> diabetesData = diabetes;
  List<String> diabetesFirstData = diabetesFirst;
  List<String> skinProblemData = skinProblem;
  List<String> skinProblemFirstData = skinProblemFirst;
  List<String> hairGrowthData = hairGrowth;
  List<String> hairGrowthFirstData = hairGrowthFirst;
  List<String> healthWeightData = healthWeight;
  List<String> healthWeightFirstData = healthWeightFirst;


  PageController pageController = PageController();
  double step = 12.5;


  void nextPage(length) {
    if (pageController.page!.toInt() < length - 1) {
      pageController.animateToPage(pageController.page!.toInt() + 1,
          duration: const Duration(milliseconds: 10), curve: Curves.easeIn);
      step = step + 12.5;
      update();
    }
    //  else if (pageController.page!.toInt() == length - 1) {
    //   Get.off(() => const ProfileStepSixth());
    // }
  }

  void previousPage() {
    if (pageController.page!.toInt() > 0) {
      pageController.animateToPage(pageController.page!.toInt() - 1,
          duration: const Duration(milliseconds: 10), curve: Curves.easeIn);
      step = step - 12.5;
      update();
    }
  }

  List<Color> colorList = [
    HexColor("#A3E8AE"),
    HexColor("#59C36A"),
  ];

  Color newColor() {
    if (step >= 0 && step <= 50) {
      return colorList[0];
    } else if (step >= 51 && step <= 101) {
      return colorList[1];
    } else {
      return AppColor.greyBG;
    }
  }


}