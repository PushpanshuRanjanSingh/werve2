import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:werve/constant/font_family.dart';
import 'constant/color.dart';
import 'demographicProfile/demographic_profile_97.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light,
  );
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Werve',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: FontFamily.quicksand,
        textTheme: TextTheme(
        bodyText1: bodyText1,
        bodyText2: bodyText2,
      )),
      home: const HomeScreen(),
    );
  }
}

get bodyText1 => TextStyle(
    color: AppColor.textColor, fontSize: 16, fontWeight: FontWeight.w500);
get bodyText2 => TextStyle(
    color: AppColor.textColor, fontSize: 16, fontWeight: FontWeight.w600);
