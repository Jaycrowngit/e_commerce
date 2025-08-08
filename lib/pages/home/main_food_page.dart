import 'package:flutter/material.dart';
import 'package:my_app3/utils/colours.dart';
import 'package:my_app3/pages/home/food_page_body.dart';
import 'package:my_app3/utils/dimensions.dart';
import 'package:my_app3/widget/app_large_text.dart';
import 'package:my_app3/widget/app_text.dart';



class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //showing the header
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top:45, bottom: 15),
            padding: EdgeInsets.only(left:20, right: 20),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    AppLargeText(text: "Nigeria", color: AppColors.mainColor,),
                    Row(
                      children: [
                        AppText(text: "Ibadan", color: Colors.black,),
                        Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )
                  ],
                ),
                Center(
                  child: Container(
                    width: 45,
                    height: 45,
                    child:  Icon(Icons.search, color:Colors.white, size:24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.mainColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
              ),
              //Showing the foodPageBody
          Expanded(child: SingleChildScrollView(
            child: FoodPageBody(),
          ),),
        ],
      ),
    );
  }
}