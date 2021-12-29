import 'package:werve/export.dart';
import 'package:werve/screens/authentication/pages/authentication_bg.dart';

class AuthGetStarted extends StatelessWidget {
  const AuthGetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const AuthenticationBG(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: AppColor.white,
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RichText(
                            text: TextSpan(
                                text: "Have account? ",
                                style: CustomTextStyle.fadeText2(),
                                children: [
                              TextSpan(
                                  text: "Login",
                                  style: CustomTextStyle.fadeText2(
                                      textColor: AppColor.blueTextColor))
                            ])),
                      ],
                    ),
                    vGap(height: 25),
                    customText("Let's Get Started",
                        style: CustomTextStyle.fadeText2(
                            textColor: AppColor.orange, fontSize: 32),
                        bold: true,
                        textAlign: TextAlign.start),
                    vGap(height: 15),
                    customText(
                      "Sign Up",
                      style: CustomTextStyle.fadeText2(fontSize: 22),
                    ),
                    vGap(height: 40),
                    Row(
                      children: [
                        Expanded(
                            child: customOutlineButton(
                                onPressed: () {
                                  Get.to(const DemographicQuestionnaire());
                                },
                                label: "Continue with Google",
                                textAlign: TextAlign.start,
                                textColor: AppColor.textColor,
                                borderColor: AppColor.grey)),
                      ],
                    ),
                    vGap(height: 20),
                    Row(
                      children: [
                        Expanded(
                            child: customOutlineButton(
                                onPressed: () {},
                                label: "Continue with Facebook",
                                textAlign: TextAlign.start,
                                textColor: AppColor.textColor,
                                borderColor: AppColor.grey)),
                      ],
                    ),
                    vGap(height: 20),
                    Row(
                      children: [
                        Expanded(
                            child: customOutlineButton(
                                onPressed: () {},
                                label: "Continue with Email",
                                textAlign: TextAlign.start,
                                textColor: AppColor.textColor,
                                borderColor: AppColor.grey)),
                      ],
                    ),
                    vGap(height: 30)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
