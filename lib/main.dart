import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sushi_restaurant/constants/colors.dart';
import 'package:sushi_restaurant/pages/home_page/home_page.dart';
import 'package:sushi_restaurant/pages/intro_page/intro_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    debugPrint(screenSize.toString());
    return ScreenUtilInit(
        designSize: const Size(411.4, 866.3),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              scaffoldBackgroundColor: AppColors.lightBg,
              useMaterial3: true,
            ),
            home: const IntroPage(),
            routes: {
              '/intropage': (context) => const IntroPage(),
              '/homepage': (context) => const HomePage(),
            },
          );
        });
  }
}
