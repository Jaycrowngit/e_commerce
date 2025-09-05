import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:my_app3/utils/colours.dart';
import 'package:my_app3/utils/dimensions.dart';
import 'package:my_app3/widget/app_column.dart';
import 'package:my_app3/widget/app_large_text.dart';
import 'package:my_app3/widget/app_text.dart';
import 'package:my_app3/widget/icon_and_text_widget.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  final PageController pageController = PageController(viewportFraction: 0.85);
  double _currPageValue = 0.0;
  final double _scaleFactor = 0.8;
  final double _height = 0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
        print("Current page value: $_currPageValue");
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  // pagecontroller 
  Widget build(BuildContext context) {
    return Column(
      children: [
        // slider section
        SizedBox(
          height: 320, //Dimensions.pageView,
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            },
          ),
        ),
        // dot indicator lines
        DotsIndicator(
          dotsCount:5,
          position:_currPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0,9.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15))
          ),
        ),
      //Popular text
      SizedBox(height: 20),
      Container(
        margin: EdgeInsets.only(left:15, right: 10), //Dimensions.width30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AppLargeText(text: "Recommendation"),
            SizedBox(width:10),
            Container(
              margin: const EdgeInsets.only(bottom: 3),
              child: AppLargeText(text: ".", color:Colors.black26),
            ),
            SizedBox(width:10,),
            Container(
              margin: const EdgeInsets.only(bottom: 2),
              child: AppText(text: "Food pairing "),
            ),
          ],
        ),
      ),

      SizedBox(height:5,),
     // List of food and images
    SizedBox(
      height: 1000,
      child: ListView.builder(
          physics:NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index){
            
            return Container(
              margin: EdgeInsets.only(left:10, right: 10,bottom:10),
              child: Row(
                children: [
                  // IMAGES SECTION
                Container(
                    width:100,// Dimensions.listViewImgSize,
                    height:100, //Dimensions.listViewImgSize,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(15),
                      color: Colors.white38,
                      image:DecorationImage(
                        image: AssetImage("assets/img/f2.jpg"),
                        fit: BoxFit.cover,
                        ),
                    ),
                  ),
                // TEXT SECTION
                 Container(
                    height:100,
                    width: 250, //Dimensions.listViewTextContSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color:Colors.white54,
                    ),
                    child:Padding(
                      padding: EdgeInsetsGeometry.only(left:10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppLargeText(text: "Shawama"),
                          SizedBox(height: 10,),
                          AppText(text: "with chinese characteristics"),
                          SizedBox(height:10,),
                          //POPULAR ICONTEXT  SECTION
                          Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [ 
                          IconAndTextWidget(
                            icon: Icons.circle_sharp,
                            text: "Normal",
                            iconColor: AppColors.iconColor1,
                          ),
                          IconAndTextWidget(
                            icon: Icons.location_on,
                            text: "1.7km",
                            iconColor: AppColors.mainColor,
                          ),
                          IconAndTextWidget(
                            icon: Icons.access_time_filled_rounded,
                            text: "32min",
                            iconColor: AppColors.iconColor2,
                          ),
                        ],
                      ),
                        ],
                      ),
                      ),
                  ),
                
                ],
              ),
            );
         }),
    ),
      ],
    );   
  }

  Widget _buildPageItem(int index) {
    // matrix slide transform and scalling
    double currScale;
    double currTrans;
    Matrix4 matrix = Matrix4.identity();

    if (index == _currPageValue.floor()) {
      currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
    } else if (index == _currPageValue.floor() + 1 || index == _currPageValue.floor() - 1) {
      currScale = _scaleFactor + (1 - (_currPageValue - index).abs()) * (1 - _scaleFactor);
    } else {
      currScale = _scaleFactor;
    }

    currTrans = _height * (1 - currScale) / 2;
    matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: 240,
            margin: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven ? const Color(0xFF69c5df) : const Color(0xFF9294cc),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/img/f1.jpg"),
              ),
            ),
          ),
        // Small detailed card lapping on the main food card... food details, icons, comments
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120,
              margin:  EdgeInsets.only(left:30, right:30, bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 5,
                    offset: Offset(0, 5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  ),
                ],
              ),
              // package information:AppColumn
              child: Padding(
                padding: EdgeInsets.only(left: 10, top:15),
                child: AppColumn(text: "KFC Package",),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
