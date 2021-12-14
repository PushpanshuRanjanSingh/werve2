import 'package:werve/export.dart';

class HabitNBehaviorController extends GetxController {
  double habitNBehaviourStep = 14.28;
  PageController pageController = PageController();

  String? eat5times;
  String? ruVegetarian;
  String? proteinFood;
  String? whenHungaryUEat;
  String? oftenUEat;
  String? eatSnack;
  String? urgeToEatSnack;

  List<String> eatFruitsData = eatFruits;
  List<String> vegetarianData = vegetarian;
  List<String> proteinFoodData = proteinFoodList;
  List<String> whenHungryData = whenHungryList;
  List<String> oftenEatData = oftenEat;
  List<String> snackData = snack;
  List<String> urgeToSnackData = urgeToSnack;

  void nextPage(length) {
    if (pageController.page!.toInt() < length - 1) {
      pageController.animateToPage(pageController.page!.toInt() + 1,
          duration: const Duration(milliseconds: 10), curve: Curves.easeIn);
      habitNBehaviourStep = habitNBehaviourStep + 14.28;
      update();
    } else if (pageController.page!.toInt() == length - 1) {
      Get.to(() => const GoalSetting());
    }
  }

  void previousPage() {
    if (pageController.page!.toInt() > 0) {
      pageController.animateToPage(pageController.page!.toInt() - 1,
          duration: const Duration(milliseconds: 10), curve: Curves.easeIn);
      habitNBehaviourStep = habitNBehaviourStep - 14.28;
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
    if (habitNBehaviourStep >= 0 && habitNBehaviourStep <= 24) {
      return colorList[0];
    } else if (habitNBehaviourStep >= 25 && habitNBehaviourStep <= 48) {
      return colorList[1];
    } else if (habitNBehaviourStep >= 50 && habitNBehaviourStep < 90) {
      return colorList[2];
    } else if (habitNBehaviourStep >= 90 && habitNBehaviourStep <= 101) {
      return colorList[3];
    } else {
      return AppColor.greyBG;
    }
  }
}
