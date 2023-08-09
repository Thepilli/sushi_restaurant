import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sushi_restaurant/components/JBox.dart';
import 'package:sushi_restaurant/components/categoy_chip.dart';
import 'package:sushi_restaurant/components/food_tile.dart';
import 'package:sushi_restaurant/components/my_matrial_button.dart';
import 'package:sushi_restaurant/components/popular_food_tile.dart';
import 'package:sushi_restaurant/constants/applystyle.dart';
import 'package:sushi_restaurant/constants/colors.dart';
import 'package:sushi_restaurant/models/food.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();

  List foodMenu = [
    Food(name: 'Original Sushi', price: '21.00', image: 'assets/images/nigiri (1).png', rating: '4.8', category: 'Sushi'),
    Food(name: 'Shrimp Sushi', price: '23.00', image: 'assets/images/nigiri (2).png', rating: '4.9', category: 'Sushi'),
    Food(name: 'Tuna Sushi', price: '19.00', image: 'assets/images/nigiri (3).png', rating: '4.5', category: 'Sushi'),
    Food(name: 'Maki Roll', price: '10.00', image: 'assets/images/maki (1).png', rating: '4.8', category: 'Sushi'),
    Food(name: 'Ramen', price: '23.00', image: 'assets/images/ramen.png', rating: '4.9', category: 'Ramen'),
    Food(name: 'Salmon Maki', price: '15.00', image: 'assets/images/maki (3).png', rating: '4.5', category: 'Sushi')
  ];

  List categories = [
    {'category': 'Sushi', 'image': 'assets/images/nigiri (1).png'},
    {'category': 'Ramen', 'image': 'assets/images/ramen (1).png'},
    {'category': 'Sake', 'image': 'assets/images/sake.png'},
    {'category': 'Sweets', 'image': 'assets/images/dango.png'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.location_on_outlined,
              color: AppColors.jPrimaryColor,
            ),
            Text(
              'Tokyo',
              style: appstyleNormal(20, AppColors.textDarkColor, FontWeight.w500),
            ),
          ],
        ),
        leading: const Icon(Icons.menu),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/icons/pika.png'),
          )
        ],
      ),
      body: SingleChildScrollView(
        reverse: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: AppColors.introBg,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Get 32% Promo',
                          style: appstyle(20, AppColors.textLightColor, FontWeight.w200),
                        ),
                        MyMaterialButton(
                          label: 'Buy Food',
                          color: AppColors.introBgLight,
                          onPressed: () {},
                        )
                      ],
                    ),
                    Image.asset(
                      'assets/images/shrimp.png',
                      height: 100.h,
                    )
                  ],
                ),
              ),
              const JBox(height: 30),
              TextField(
                controller: searchController,
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  prefixIconColor: AppColors.jPrimaryColor,
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  alignLabelWithHint: true,
                  label: Text('Email', style: appstyleNormal(15, AppColors.jPrimaryColor, FontWeight.normal)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: AppColors.textDarkColor),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: AppColors.jPrimaryColor),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const JBox(height: 20),
              SizedBox(
                height: 100.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    var cObj = categories[index] as Map? ?? {};
                    return CategoryChip(cObj: cObj, color: AppColors.lightBglight);
                  },
                ),
              ),
              const JBox(height: 20),
              SizedBox(
                height: 220.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodMenu.length,
                  itemBuilder: (context, index) {
                    return FoodTile(food: foodMenu[index]);
                  },
                ),
              ),
              Text(
                'Popular Food',
                style: appstyleNormal(24, AppColors.textDarkColor, FontWeight.normal),
              ),
              PopularFood(food: foodMenu[2])
            ],
          ),
        ),
      ),
    );
  }
}
