import 'package:werve/export.dart';

class ProfileStepSixth extends StatelessWidget {
  const ProfileStepSixth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileStep(
      step: 3,
      title: 'PCOD Condition',
      asset: Assets.profileStep_6,
      quote: "Polycystic ovary syndrome is a condition in which a woman's hormones are out of balance.",
      buttonLable: "PCOD / Menstrual Cycle",
      onPressed: () {
        Get.to(() => const MenstrualCycle());
      },
    );
  }
}
