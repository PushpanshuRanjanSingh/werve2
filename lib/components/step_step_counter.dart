import 'package:werve/export.dart';

class StepCounter extends StatelessWidget {
  final int currentStep;
  final Color color;

  const StepCounter({
    Key? key,
    required this.currentStep,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StepProgressIndicator(
      totalSteps: 100,
      currentStep: currentStep,
      size: 8,
      padding: 0,
      selectedColor: Colors.yellow,
      unselectedColor: Colors.grey.shade800,
      selectedGradientColor: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [color, color],
      ),
      unselectedGradientColor: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [AppColor.grey, AppColor.grey],
      ),
    );
  }
}
