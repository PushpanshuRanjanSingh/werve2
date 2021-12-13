import 'package:werve/export.dart';

class ProfileStep extends StatelessWidget {
  final int step;
  final String title;
  final String asset;
  final String quote;
  final String buttonLable;
  final Function() onPressed;
  const ProfileStep(
      {Key? key,
      required this.step,
      required this.title,
      required this.asset,
      required this.quote,
      required this.buttonLable,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  customText("Step $step of 3",
                      style: CustomTextStyle.fadeText2(
                          textColor: AppColor.blueTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  vGap(),
                  customText(title,
                      style: CustomTextStyle.fadeText2(
                          textColor: AppColor.pinkTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                ],
              ),
              ClipOval(
                  child: Image.asset(
                asset,
                height: context.isPortrait ? Get.height * 0.4 : Get.width * 0.2,
              )),
              customText(quote,
                  style: CustomTextStyle.fadeText1(fontSize: 18),
                  maxLines: 2,
                  textAlign: TextAlign.center),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100))),
                  onPressed: onPressed,
                  child: customText(buttonLable,
                      style: CustomTextStyle.fadeText1(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          textColor: Colors.white))),
            ],
          ),
        ),
      ),
    ));
  }
}
