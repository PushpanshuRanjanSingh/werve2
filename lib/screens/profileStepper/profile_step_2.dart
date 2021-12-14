import 'package:werve/export.dart';

class ProfileStepSecond extends StatelessWidget {
  const ProfileStepSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileStep(
      step: 2,
      title: 'Profile Creation',
      asset: Assets.profileStep_2,
      quote: "Lets better understand who you are to fulfil your goals",
      buttonLable: "Create Lifestyle Profile",
      onPressed: () {
        Get.to(() => const LifestyleQuestionnaire());
      },
    );
  }
}
