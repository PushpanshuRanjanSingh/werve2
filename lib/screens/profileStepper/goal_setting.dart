import 'package:werve/export.dart';

class GoalSetting extends StatelessWidget {
  const GoalSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileStep(
        step: null,
        title: "Goal Settings",
        asset: Assets.goal,
        quote:
            "Setting the goal is the first step in turning the invisible to the visible",
        buttonLable: "Start",
        onPressed: () {
          Get.to(()=>const GoalFocusArea());
        });
  }
}
