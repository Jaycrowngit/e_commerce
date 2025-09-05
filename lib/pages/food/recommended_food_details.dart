import 'package:flutter/material.dart';
import 'package:my_app3/utils/colours.dart';
import 'package:my_app3/widget/app_icon.dart';
import 'package:my_app3/widget/app_large_text.dart';
import 'package:my_app3/widget/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ 
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20), 
              child: Container( 
                width: double.maxFinite,
                padding: EdgeInsets.only(top:5, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                  ),
                  color:Colors.white,
                ),
                child:Center(child: AppLargeText(size:26, text:"African Egusi Soup recipe")),
            ),
                ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/img/f6.jpg",
              width: double.maxFinite,
              fit: BoxFit.cover,
              ),
              
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                child: ExpandableTextWidget(text:
                  "You’re probably thinking, “Did I just read that right? Chinese Spaghetti Bolognese?!!Yep, that’s right–Chinese Spaghetti Bolognese. The name popped into my head as I was making this dish for the family. It’s ground beef in a silky Chinese-style brown sauce with plenty of delicious Asian flavors. Cooked until fragrant, mixed with green peas, and tossed with your favorite pasta, it’s similar to a traditional beef “Yook Soong,” but instead of serving it over rice, it’s tossed with spaghetti! (Of course, I’m definitely using the term “bolognese” here very loosely. Wouldn’t want to offend any of our Italian readers!)This recipe is so satisfying and easy to make, it will wow your family (especially the kids). Plus, this comes together much more quickly than a traditional Italian Spaghetti Bolognese. It’s definitely an original one-of-a-kind dish, so don’t worry about the strange looks you first get when you approach the table with a plateful of spaghetti, noticeably absent of tomato sauce. Once your family digs in, you’ll know what I mean. Give this original dish from our family recipe archives a try. You’re probably thinking, “Did I just read that right? Chinese Spaghetti Bolognese?!!Yep, that’s right–Chinese Spaghetti Bolognese. The name popped into my head as I was making this dish for the family. It’s ground beef in a silky Chinese-style brown sauce with plenty of delicious Asian flavors. Cooked until fragrant, mixed with green peas, and tossed with your favorite pasta, it’s similar to a traditional beef “Yook Soong,” but instead of serving it over rice, it’s tossed with spaghetti! (Of course, I’m definitely using the term “bolognese” here very loosely. Wouldn’t want to offend any of our Italian readers!)This recipe is so satisfying and easy to make, it will wow your family (especially the kids). Plus, this comes together much more quickly than a traditional Italian Spaghetti Bolognese. It’s definitely an original one-of-a-kind dish, so don’t worry about the strange looks you first get when you approach the table with a plateful of spaghetti, noticeably absent of tomato sauce. Once your family digs in, you’ll know what I mean. Give this original dish from our family recipe archives a try. You’re probably thinking, “Did I just read that right? Chinese Spaghetti Bolognese?!!Yep, that’s right–Chinese Spaghetti Bolognese. The name popped into my head as I was making this dish for the family. It’s ground beef in a silky Chinese-style brown sauce with plenty of delicious Asian flavors. Cooked until fragrant, mixed with green peas, and tossed with your favorite pasta, it’s similar to a traditional beef “Yook Soong,” but instead of serving it over rice, it’s tossed with spaghetti! (Of course, I’m definitely using the term “bolognese” here very loosely. Wouldn’t want to offend any of our Italian readers!)This recipe is so satisfying and easy to make, it will wow your family (especially the kids). Plus, this comes together much more quickly than a traditional Italian Spaghetti Bolognese. It’s definitely an original one-of-a-kind dish, so don’t worry about the strange looks you first get when you approach the table with a plateful of spaghetti, noticeably absent of tomato sauce. Once your family digs in, you’ll know what I mean. Give this original dish from our family recipe archives a try. You’re probably thinking, “Did I just read that right? Chinese Spaghetti Bolognese?!!Yep, that’s right–Chinese Spaghetti Bolognese. The name popped into my head as I was making this dish for the family. It’s ground beef in a silky Chinese-style brown sauce with plenty of delicious Asian flavors. Cooked until fragrant, mixed with green peas, and tossed with your favorite pasta, it’s similar to a traditional beef “Yook Soong,” but instead of serving it over rice, it’s tossed with spaghetti! (Of course, I’m definitely using the term “bolognese” here very loosely. Wouldn’t want to offend any of our Italian readers!)This recipe is so satisfying and easy to make, it will wow your family (especially the kids). Plus, this comes together much more quickly than a traditional Italian Spaghetti Bolognese. It’s definitely an original one-of-a-kind dish, so don’t worry about the strange looks you first get when you approach the table with a plateful of spaghetti, noticeably absent of tomato sauce. Once your family digs in, you’ll know what I mean. Give this original dish from our family recipe archives a try. You’re probably thinking, “Did I just read that right? Chinese Spaghetti Bolognese?!!Yep, that’s right–Chinese Spaghetti Bolognese. The name popped into my head as I was making this dish for the family. It’s ground beef in a silky Chinese-style brown sauce with plenty of delicious Asian flavors. Cooked until fragrant, mixed with green peas, and tossed with your favorite pasta, it’s similar to a traditional beef “Yook Soong,” but instead of serving it over rice, it’s tossed with spaghetti! (Of course, I’m definitely using the term “bolognese” here very loosely. Wouldn’t want to offend any of our Italian readers!)This recipe is so satisfying and easy to make, it will wow your family (especially the kids). Plus, this comes together much more quickly than a traditional Italian Spaghetti Bolognese. It’s definitely an original one-of-a-kind dish, so don’t worry about the strange looks you first get when you approach the table with a plateful of spaghetti, noticeably absent of tomato sauce. Once your family digs in, you’ll know what I mean. Give this original dish from our family recipe archives a try. You’re probably thinking, “Did I just read that right? Chinese Spaghetti Bolognese?!!Yep, that’s right–Chinese Spaghetti Bolognese. The name popped into my head as I was making this dish for the family. It’s ground beef in a silky Chinese-style brown sauce with plenty of delicious Asian flavors. Cooked until fragrant, mixed with green peas, and tossed with your favorite pasta, it’s similar to a traditional beef “Yook Soong,” but instead of serving it over rice, it’s tossed with spaghetti! (Of course, I’m definitely using the term “bolognese” here very loosely. Wouldn’t want to offend any of our Italian readers!)This recipe is so satisfying and easy to make, it will wow your family (especially the kids). Plus, this comes together much more quickly than a traditional Italian Spaghetti Bolognese. It’s definitely an original one-of-a-kind dish, so don’t worry about the strange looks you first get when you approach the table with a plateful of spaghetti, noticeably absent of tomato sauce. Once your family digs in, you’ll know what I mean. Give this original dish from our family recipe archives a try"
                ),
                margin: EdgeInsets.only(left: 20, right: 20),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left:20*2.5,
              right:20*2.5,
              top:10,
              bottom:10),
            child: Row( 
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              AppIcon(
                iconSize: 24,
                iconColor:Colors.white,
                backgroundColor:AppColors.mainColor,
                icon:Icons.remove),
              AppLargeText(text: "\$12.88 "+" x "+" 0", color:AppColors.mainBlackColor, size:24),
              AppIcon(
                iconSize: 24,
                iconColor:Colors.white,
                backgroundColor:AppColors.mainColor,
                icon: Icons.add),
            ]
            ),
          ),
           Container(
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
          child: Icon(
            Icons.favorite,
            color:AppColors.mainColor,
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
        ],
      ),
    );
  }
}