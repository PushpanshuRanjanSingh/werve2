import 'package:werve/export.dart';

class ProfileStepFourth extends StatelessWidget {
  const ProfileStepFourth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileStep(
      step: 1,
      title: 'Profile Creation',
      asset: Assets.profileStep_3,
      quote: "Lets better understand who you are to fulfil your goals",
      buttonLable: "Lifestyle / Activity",
      onPressed: () {
        Get.to(() => const LifeStyleActivity());
      },
    );
  }
}
