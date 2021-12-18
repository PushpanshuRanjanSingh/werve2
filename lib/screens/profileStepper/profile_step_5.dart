import 'package:werve/export.dart';

class ProfileStepFifth extends StatelessWidget {
  const ProfileStepFifth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileStep(
      step: 2,
      title: 'Profile Creation',
      asset: Assets.profileStep_3,
      quote: "Lets better understand who you are to fulfil your goals",
      buttonLable: "Lifestyle - Habits & Behaviours",
      onPressed: () {
        Get.to(() => const LifeStyleSecond());
      },
    );
  }
}
