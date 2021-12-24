import 'package:werve/export.dart';

class DemographicProfileController extends GetxController
    with GetSingleTickerProviderStateMixin {
  int heightFt = 0;
  int heightIn = 0;
  int heightCms = 0;
  int weightLb = 0;
  int weightKg = 0;
  double demographicStep = 16.6666666667;
  int? selectedIndex;
  int waistCircumferenceIn = 0;
  int waistCircumferenceCms = 0;
  bool isFt = true;
  bool isKg = true;
  String? ageRange;
  String? gender;
  String? country;
  RxString city = "".obs;
  String? dropdownValue;
  TextEditingController cityEditingController = TextEditingController();
  TextEditingController countryEditingController = TextEditingController();
  List<String> countryList = const ["India", "Italia", "Tunisia", 'Canada'];
  List<String>? cityList = [];
  PageController pageController = PageController();
  CountryCityModel countryCityModel =
      CountryCityModel.fromJson(countryListData);


  List<String> selectYourAgeGroup = [
    "Below 18 yrs",
    "18 - 26 yrs",
    "26 - 38 yrs",
    "38 - 54 yrs",
    "54+ yrs"
  ];

  List<String> selectYourGender = ["Male", "Female", "Other"];

  List<int> heightInFeet = heightInFeetData;
  List<int> heightInInch = heightInInchData;
  List<int> weightInLbs = weightInLbsData;
  List<int> weightInKg = weightInKgData;
  List<int> heightInCms = heightInCmsData;
  List<int> waistInIn = waistInInData;
  List<int> waistInCms = waistInCmsData;


  AnimationController? animationController;
  Listenable? animation;
  Animation<double>? animationHandler;
  final duration = const Duration(milliseconds: 500);
  demographicAnimation() {
    animation = Tween<double>(begin: 0, end: 150).animate(animationController!)
      ..addListener(() => update());
    animationHandler = Tween<double>(begin: Get.context!.isPortrait ? Get.width : Get.height, end: 0)
        .animate(animationController!)
      ..addListener(() => update());
    animationController?.forward();
  }


  @override
  void onInit() {
    animationController = AnimationController(duration: duration, vsync: this);
    super.onInit();
  }

  void toggleToFt() {
    isFt = true;
    heightCms = 0;
    update();
  }

  void toggleToCm() {
    isFt = false;
    heightFt = 0;
    update();
  }

  void toggleToKg() {
    isKg = true;
    update();
  }

  void toggleToLbs() {
    isKg = false;
    update();
  }

  void calculateHeight() {
    if (heightFt != 0) {
      heightCms = ((heightFt * 30.48) + (heightIn * 2.54)).ceil().toInt();
    } else if (heightCms != 0) {
      double inch = heightCms / 2.54;
      double feet = inch / 12;
      heightFt = feet.toInt();
      heightIn = ((feet - heightFt) * 100).toInt();
    }
    update();
  }

  void calculateWeight() {
    if (weightKg != 0) {
      weightLb = (weightKg * 2.205).ceil().toInt();
    } else if (weightLb != 0) {
      weightKg = (weightLb / 2.205).ceil().toInt();
    }
    update();
  }

  void calculateWaist() {
    if (waistCircumferenceIn != 0) {
      waistCircumferenceCms = (waistCircumferenceIn * 2.54).ceil().toInt();
    } else if (waistCircumferenceCms != 0) {
      waistCircumferenceIn = (waistCircumferenceCms / 2.54).ceil().toInt();
    }
    update();
  }

  void setCountry(CountryDataModel? value) {
    city = "".obs;
    country = value?.country;
    cityList = value?.cities;
    update();
  }

  void setCity(String? value) {
    city.value = value!;
    demographicAnimation();
    update();
  }

  void nextPage(length) {
    if (pageController.page!.toInt() < length - 1) {
      pageController.animateToPage(pageController.page!.toInt() + 1,
          duration: const Duration(milliseconds: 10), curve: Curves.easeIn);
      demographicStep = demographicStep + 16.6666666667;
      update();
    } else if (pageController.page!.toInt() == length - 1) {
      Get.to(() => const ProfileStepSecond());
    }
  }

  void previousPage() {
    if (pageController.page!.toInt() > 0) {
      pageController.animateToPage(pageController.page!.toInt() - 1,
          duration: const Duration(milliseconds: 10), curve: Curves.easeIn);
      demographicStep = demographicStep - 16.6666666667;
      update();
    }
  }

  List<Color> colorList = [
    HexColor("#FFDA2D"),
    HexColor("#FB9C4C"),
    HexColor("#A3E8AE"),
    HexColor("#59C36A"),
  ];

  Color newColor() {
    if (demographicStep >= 0 && demographicStep <= 24) {
      return colorList[0];
    } else if (demographicStep >= 25 && demographicStep <= 48) {
      return colorList[1];
    } else if (demographicStep >= 50 && demographicStep < 90) {
      return colorList[2];
    } else if (demographicStep >= 90 && demographicStep <= 101) {
      return colorList[3];
    } else {
      return AppColor.greyBG;
    }
  }
}
