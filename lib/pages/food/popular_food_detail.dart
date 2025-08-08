import 'package:flutter/material.dart';
import 'package:my_app3/utils/colours.dart';
// import 'package:my_app3/utils/dimensions.dart';
import 'package:my_app3/widget/app_column.dart';
import 'package:my_app3/widget/app_icon.dart';
import 'package:my_app3/widget/app_large_text.dart';
import 'package:my_app3/widget/expandable_text_widget.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //Background Image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 350, //Dimensions.popularFoodSize,
              decoration: BoxDecoration(
                image:DecorationImage(
                  image:AssetImage("assets/img/f3.jpg"),
                  fit: BoxFit.cover,
              ),
              ),
            ),
          ),
          //cart Icon details
          Positioned(
            top:30,
            left: 10,
            right: 10,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
          ),),
          //Introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 300,
            child: Container(
              padding: EdgeInsets.only(left:20, right:20, top:20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight:Radius.circular(20),
                    topLeft: Radius.circular(20),
                    ),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      AppColumn(text:"Chinese Spaghetti"),
      SizedBox(height: 10),
      AppLargeText(text: "Introduce"),
      ExpandableTextWidget(text: "You’re probably thinking, “Did I just read that right? Chinese Spaghetti Bolognese?!!Yep, that’s right–Chinese Spaghetti Bolognese. The name popped into my head as I was making this dish for the family. It’s ground beef in a silky Chinese-style brown sauce with plenty of delicious Asian flavors. Cooked until fragrant, mixed with green peas, and tossed with your favorite pasta, it’s similar to a traditional beef “Yook Soong,” but instead of serving it over rice, it’s tossed with spaghetti! (Of course, I’m definitely using the term “bolognese” here very loosely. Wouldn’t want to offend any of our Italian readers!)This recipe is so satisfying and easy to make, it will wow your family (especially the kids). Plus, this comes together much more quickly than a traditional Italian Spaghetti Bolognese. It’s definitely an original one-of-a-kind dish, so don’t worry about the strange looks you first get when you approach the table with a plateful of spaghetti, noticeably absent of tomato sauce. Once your family digs in, you’ll know what I mean. Give this original dish from our family recipe archives a try"),
    ],
  ),
),

                 ),
                 ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding: EdgeInsets.only(top:15, bottom: 15,left:15,right: 15),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20*1.5),
            topRight: Radius.circular(20*1.5),
            ),
        ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(top:15,bottom: 15,left: 15,right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color:Colors.white, 
            ),
          child:Row( 
            children: [
              Icon(Icons.remove, color:AppColors.signColor),
             SizedBox(width: 5,),
              AppLargeText(text: "0"),
              SizedBox(width: 5,),
              Icon(Icons.add, color:AppColors.signColor),
            ],
          ),
          ),
        Container(
          padding: EdgeInsets.only(top:20,bottom: 20,left: 20,right: 20),
          child: AppLargeText(text: "\$10  | Add to cart", color:Colors.white),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color:AppColors.mainColor, 
            ),
          ),
        ],
      ),
      ),
    );
  }

}