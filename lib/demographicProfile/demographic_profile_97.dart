import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:werve/components/custom_outlined_button.dart';
import 'package:werve/constant/assets.dart';
import 'package:werve/constant/color.dart';
import 'package:werve/constant/common_widget.dart';
import 'package:werve/constant/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            vGap(),
            polygonTimeLine(),
            vGap(height: 30),
            customTextFullWidth("Demographic Profile"),
            vGap(height: 60),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  imageAsset(Assets.greenStar, height: 68, width: 68),
                  vGap(height: 2),
                  customTextFullWidth(
                      "Congratulations on taking the first step!",
                      style: Theme.of(Get.context!)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: AppColor.greenTextColor)),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      customTextFullWidth("Select your age group",bold: true),
                      vGap(height: 20),
                      ListView.separated(shrinkWrap: true,itemCount: 5, itemBuilder: (BuildContext context, int index){

                        return customOutlineButton(
                          label: 'Below 18 Years',
                          bgColor: selectedIndex==index ? AppColor.green50:  null,
                          onPressed: () {
                            setState(() {
                              selectedIndex=index;
                            });
                          },
                        );
                      }, separatorBuilder: (BuildContext context, int index) => vGap())
                    ],
                  ),
                ),
              ),
            ),
            // const Spacer(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customOutlineButton(
                        textColor: Colors.blue,
                        label: 'Back',
                        onPressed: () {},
                      ),
                      customOutlineButton(
                        textColor: Colors.blue,
                        label: 'Next',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                customText("40% Complete",
                    style: Theme.of(Get.context!)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 12, fontWeight: FontWeight.w300)),
                vGap(height: 2),
                StepProgressIndicator(
                  totalSteps: 100,
                  currentStep: 32,
                  size: 8,
                  padding: 0,
                  selectedColor: Colors.yellow,
                  unselectedColor: Colors.cyan,
                  selectedGradientColor: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [AppColor.orange, AppColor.orange],
                  ),
                  unselectedGradientColor: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [AppColor.grey, AppColor.grey],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

