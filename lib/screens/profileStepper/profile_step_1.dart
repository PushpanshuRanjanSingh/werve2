import 'package:werve/export.dart';

class ProfileStepFirst extends StatelessWidget {
  const ProfileStepFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileStep(
      step: 1,
      title: 'Profile Creation',
      asset: Assets.profileStep_1,
      quote: "Lets better understand who you are to fulfil your goals",
      buttonLable: "Create Demographic Profile",
      onPressed: () {
        Get.to(() => const DemographicQuestionnaire());
      },
    );
  }
}
