import 'package:werve/export.dart';

class ProfileStepThird extends StatelessWidget {
  const ProfileStepThird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileStep(
      step: 3,
      title: 'Profile Creation',
      asset: Assets.profileStep_3,
      quote: "Lets better understand who you are to fulfil your goals",
      buttonLable: "Create Activity & Nutrition Profile",
      onPressed: () {},
    );
  }
}
