import 'package:werve/export.dart';

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
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus!.unfocus();
        }
      },
      child: GetMaterialApp(
        title: 'Werve',
        debugShowCheckedModeBanner: false,
        initialBinding: InitiateBindings(),
        theme: ThemeData(
            backgroundColor: Colors.white,
            primarySwatch: Colors.blue,
            fontFamily: FontFamily.quicksand,
            textTheme: TextTheme(
              bodyText1: bodyText1,
              bodyText2: bodyText2,
            )),
        home: const ProfileStepFirst(),
      ),
    );
  }
}

get bodyText1 => TextStyle(
    color: AppColor.textColor, fontSize: 16, fontWeight: FontWeight.w500);
get bodyText2 => TextStyle(
    color: AppColor.textColor, fontSize: 18, fontWeight: FontWeight.w800);
