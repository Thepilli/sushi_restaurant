import 'package:flutter/material.dart';
import 'package:sushi_restaurant/constants/applystyle.dart';
import 'package:sushi_restaurant/constants/colors.dart';
import 'package:sushi_restaurant/models/food.dart';

class PopularFood extends StatelessWidget {
  final Food food;
  const PopularFood({
    super.key,
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 30,
      tileColor: AppColors.lightBglight,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      leading: Image.asset(
        food.image,
        width: 100,
        fit: BoxFit.contain,
      ),
      title: Text(
        food.name,
        style: appstyle(20, AppColors.textDarkColor, FontWeight.normal),
      ),
      subtitle: Row(
        children: [
          Text('\$${food.price}', style: appstyleNormal(15, AppColors.textDarkColor, FontWeight.normal)),
          const Spacer(),
          const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          Text(food.rating, style: appstyleNormal(15, AppColors.textDarkColor, FontWeight.w200))
        ],
      ),
      trailing: const Icon(Icons.favorite),
    );
  }
}
