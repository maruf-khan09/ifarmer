import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ifarmer/utils/colors.dart';
import 'package:ifarmer/utils/routes.dart';
import 'package:ifarmer/utils/shared_pref.dart';
import 'package:ifarmer/views/checkout/checkoutpage.dart';
import 'package:ifarmer/views/home/login.dart';
import 'package:ifarmer/views/product%20page/product_page.dart';
import 'package:ifarmer/views/profile/profile_page.dart';
import 'package:ifarmer/views/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  // This widget is the root of your application.
  SharedPref _sharedPref = SharedPref();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // localizationsDelegates: context.localizationDelegates,
      // supportedLocales: context.supportedLocales,
      // locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: IFarmerColors.backgroundColor,
          brightness: Brightness.light,
          primaryColor: IFarmerColors.primaryColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),

      unknownRoute: GetPage(
        name: splashPage,
        page: () => const Splash(),
      ),

      getPages: [
        GetPage(
          name: loginpage,
          page: () => const LoginPage(),
        ),
        GetPage(
          name: productpage,
          page: () => const ProductPage(),
        ),
        GetPage(
          name: checkoutpage,
          page: () => const CheckoutPage(),
        ),
        GetPage(
          name: profilepage,
          page: () => const ProfilePage(),
        ),
      ],
    );
  }
}
