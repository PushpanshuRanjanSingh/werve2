import '../export.dart';

class GetxAnimationController extends GetxController with GetSingleTickerProviderStateMixin {
   Animation? animation;
   AnimationController? _animationController;

  @override
  void onInit() {
    super.onInit();
    _animationController = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animationController?.repeat(reverse: true);

    animation = Tween(begin: 2.0, end: 15.0)
        .animate(_animationController!)
      ..addListener(() => update());
  }

  @override
  void onClose() {
    super.onClose();

    _animationController?.dispose();
  }
}