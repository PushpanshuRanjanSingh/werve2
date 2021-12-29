import 'package:werve/export.dart';

class AuthenticationBG extends StatelessWidget {

  const AuthenticationBG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.authBG,
        body: Stack(
          children: [
            Positioned(top: 0, right: -40, child: imageAsset(Assets.topRight, height: Get.height*0.4, width: Get.width)),
            Positioned(
                bottom: 0, left: -40, child: imageAsset(Assets.bottomLeft, height: Get.height*0.4, width: Get.width)),
          ],
        ),
      ),
    );
  }
}
