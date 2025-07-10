import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.6;
  static double pageViewContainer = screenHeight / 3.8;
  static double pageViewTextContainer = screenHeight / 6.9;
  // dynamic for height padding and margin
  static double height10 = screenHeight / 83.4;
  static double height15 = screenHeight / 55.62;
  static double height20 = screenHeight / 41.72;
  static double height30 = screenHeight / 27.72;
  static double height45 = screenHeight / 18.54;

    // dynamic for width padding and margin
  static double width10 = screenHeight / 83.4;
  static double width15 = screenHeight / 55.62;
  static double width20 = screenHeight / 41.72;
  static double width30 = screenHeight / 27.72;

  // font size
  static double font26 = screenHeight / 32.1;
  static double font20 = screenHeight / 41.72;

  // dynamic for radius
  static double radius15 = screenHeight / 55.62;
  static double radius20 = screenHeight / 41.72;
  static double radius30 = screenHeight / 27.72;

// Icon Size 834/24(screen resolution divided by the icon size)
static double iconSize24 = screenHeight / 34.77;
static double iconSize16 = screenHeight / 52.15;


//List View Size
static double listViewImgSize = screenWidth / 3.25;
static double listViewTextContSize = screenWidth / 3.9;

// popular food 
static double popularFoodSize = screenHeight / 2.4;
}
