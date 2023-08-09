import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sushi_restaurant/components/JBox.dart';
import 'package:sushi_restaurant/constants/applystyle.dart';
import 'package:sushi_restaurant/constants/colors.dart';

class MyMaterialButton extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback onPressed;
  final IconData? icon;
  final double minWidth;
  const MyMaterialButton({
    super.key,
    required this.label,
    required this.color,
    required this.onPressed,
    this.icon,
    this.minWidth = 100,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: minWidth.w,
      height: 60.h,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: appstyleNormal(16, AppColors.textLightColor, FontWeight.normal),
          ),
          const JBox(width: 10),
          Icon(
            icon,
            size: icon != null ? 30 : 0,
            color: AppColors.textLightColor,
          ),
        ],
      ),
    );
  }
}
