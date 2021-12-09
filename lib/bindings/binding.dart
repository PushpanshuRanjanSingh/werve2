import 'package:get/get.dart';
import 'package:werve/demographicProfile/controller/demographic_profile_controller.dart';

class InitiateBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DemographicProfileController());
  }
}
