import 'package:werve/export.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      // go to home page
    } else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(
        'assets/images/img_ic_health.png',
        'Have a good health',
        'Eat well, drink in moderation, and sleep sound, in these three good health abounds',
        'Latin Proverb'),
    OnboardingInfo(
        'assets/images/img_ic_food.png',
        'Eat healthy',
        'when diet is wrong, Medicine is of no use.When diet is correct, Medicine is of no need.',
        'Ayurvedic Proverb'),
    OnboardingInfo(
        'assets/images/img_ic_mind.png',
        'Stress less',
        'Mental health problems don’t define  who you are. They are something you experience. You walk in the rain and you feel the rain, but, importantly, You are not a rain.',
        'Matt Haig'),
  ];
}
