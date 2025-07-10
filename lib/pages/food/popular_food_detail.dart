import 'package:flutter/material.dart';
import 'package:my_app3/utils/dimensions.dart';
import 'package:my_app3/widget/app_column.dart';
import 'package:my_app3/widget/app_icon.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodSize,
              decoration: BoxDecoration(
                image:DecorationImage(
                  image:AssetImage("assets/img/f2.jpg"),
                  fit: BoxFit.cover,
              ),
              ),
            ),
          ),
          Positioned(
            top:Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
          ),),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodSize-20,
            child: Container(
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top:Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight:Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                    ),
                  color: Colors.white,
                ),
                child: AppColumn( text: "Chinese side",),
                 ),),
        ],
      ),
    );
  }
}