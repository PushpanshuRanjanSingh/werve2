import 'package:werve/export.dart';

class InitiateBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DemographicProfileController(), fenix: true);
    Get.lazyPut(() => LifeStyleProfileController(), fenix: true);
    Get.lazyPut(() => HabitNBehaviorController(), fenix: true);
    Get.lazyPut(() => GoalSettingController(), fenix: true);
  }
}
