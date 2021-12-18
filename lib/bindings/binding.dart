import 'package:werve/export.dart';

class InitiateBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DemographicProfileController(), fenix: true);
    Get.lazyPut(() => LifeStyleProfileController(), fenix: true);
    Get.lazyPut(() => HabitNBehaviorController(), fenix: true);
    Get.lazyPut(() => GoalSettingController(), fenix: true);
    Get.lazyPut(() => OnBoardingController(), fenix: true);
    Get.lazyPut(() => LifeStyleActivityController(), fenix: true);
    Get.lazyPut(() => LifeStyleSecondController(), fenix: true);
    Get.lazyPut(() => MenstrualCycleController(), fenix: true);
  }
}
