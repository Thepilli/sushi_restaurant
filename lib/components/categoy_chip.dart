import 'package:flutter/material.dart';
import 'package:sushi_restaurant/constants/applystyle.dart';
import 'package:sushi_restaurant/constants/colors.dart';

class CategoryChip extends StatelessWidget {
  final Map cObj;
  final Color color;
  const CategoryChip({
    super.key,
    required this.cObj,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chip(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          avatar: Image.asset(
            cObj['image'].toString(),
          ),
          label: Text(
            cObj['category'],
            style: appstyleNormal(15, AppColors.jPrimaryColor, FontWeight.normal),
          )),
    );
  }
}
