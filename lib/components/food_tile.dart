import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sushi_restaurant/components/JBox.dart';
import 'package:sushi_restaurant/constants/applystyle.dart';
import 'package:sushi_restaurant/constants/colors.dart';
import 'package:sushi_restaurant/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  const FoodTile({
    super.key,
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 200.h,
        width: 180.h,
        decoration: const BoxDecoration(color: AppColors.lightBglight, borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  food.image,
                  width: 100,
                  fit: BoxFit.contain,
                ),
                const Icon(Icons.favorite)
              ],
            ),
            const JBox(height: 10),
            Text(
              food.name,
              style: appstyle(15, AppColors.textDarkColor, FontWeight.normal),
            ),
            const JBox(height: 10),
            Row(
              children: [
                Text('\$${food.price}', style: appstyleNormal(15, AppColors.textDarkColor, FontWeight.normal)),
                const Spacer(),
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Text(food.rating, style: appstyleNormal(15, AppColors.textDarkColor, FontWeight.w200))
              ],
            )
          ],
        ),
      ),
    );
  }
}
