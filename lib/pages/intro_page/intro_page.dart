import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sushi_restaurant/components/JBox.dart';
import 'package:sushi_restaurant/components/my_matrial_button.dart';
import 'package:sushi_restaurant/constants/applystyle.dart';
import 'package:sushi_restaurant/constants/colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.introBg,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SUSHI MAN',
              style: appstyle(32, AppColors.textLightColor, FontWeight.w400),
            ),
            const JBox(height: 20),
            Image.asset('assets/images/intro.png'),
            const JBox(height: 20),
            Text(
              'THE TASTE OF JAPANESE FOOD',
              style: appstyle(48, AppColors.textLightColor, FontWeight.w400),
            ),
            const JBox(height: 20),
            Text(
              'Feel the taste of most populars Japanese foods from anywhere and anytime.',
              style: appstyleNormal(16, AppColors.textLightColor, FontWeight.normal),
            ),
            const JBox(height: 30),
            Center(
              child: MyMaterialButton(
                  label: 'Get Started',
                  color: AppColors.introBgLight,
                  onPressed: () {
                    Navigator.pushNamed(context, '/homepage');
                  },
                  icon: Icons.arrow_right_alt_rounded),
            )
          ],
        ),
      )),
    );
  }
}
