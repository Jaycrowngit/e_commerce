// import 'package:get/get.dart';

// class Dimensions {
//   static double screenHeight = Get.context!.height;
//   static double screenWidth = Get.context!.width;

//   static double pageView = screenHeight / 2.6;
//   static double pageViewContainer = screenHeight / 3.8;
//   static double pageViewTextContainer = screenHeight / 6.9;
//   // dynamic for height padding and margin
//   static double height10 = screenHeight / 83.4;
//   static double height15 = screenHeight / 55.62;
//   static double height20 = screenHeight / 41.72;
//   static double height30 = screenHeight / 27.72;
//   static double height45 = screenHeight / 18.54;

//     // dynamic for width padding and margin
//   static double width10 = screenHeight / 83.4;
//   static double width15 = screenHeight / 55.62;
//   static double width20 = screenHeight / 41.72;
//   static double width30 = screenHeight / 27.72;

//   // font size
//   static double font26 = screenHeight / 32.1;
//   static double font20 = screenHeight / 41.72;

//   // dynamic for radius
//   static double radius15 = screenHeight / 55.62;
//   static double radius20 = screenHeight / 41.72;
//   static double radius30 = screenHeight / 27.72;

// // Icon Size 834/24(screen resolution divided by the icon size)
// static double iconSize24 = screenHeight / 34.77;
// static double iconSize16 = screenHeight / 52.15;


// //List View Size
// static double listViewImgSize = screenWidth / 3.25;
// static double listViewTextContSize = screenWidth / 3.9;

// // popular food 
// static double popularFoodSize = screenHeight / 2.4;
// }



import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
//import 'package:url_launcher/url_launcher_string.dart';

class TDeviceUtils {
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color)
    );
  }

  static bool isLandscapeOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  static bool isPortraitOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0;
  }

  static void setFullScreen (bool enable) {
    SystemChrome.setEnabledSystemUIMode(enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getPixelRatio() {
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  static double getStatusBarHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }

  static double getBottomNavigationBarHeight() {
    return kBottomNavigationBarHeight;
  }

  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  static double getKeyboardHeight()  {
    final viewInsets = MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom;
  }

  static Future<bool> isKeyboardVisible() async {
    final viewInsets = MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom > 0;
  }

  static Future<bool> isPhysicalDevice() async {

    return defaultTargetPlatform == TargetPlatform.android || defaultTargetPlatform == TargetPlatform.iOS;
  }

  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate);
  }

  static Future<void> setPreferredOrientations(List<DeviceOrientation> orientations) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
  }

  static Future<bool> hasInternetConnection() async {
    try{
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_){
      return false;
    }
  }

  static bool isIOS() {
    return Platform.isIOS;
  }

  static bool isAndroid() {
    return Platform.isAndroid;
  }

  // static void launchUrl(String url) async {
  //   if(await canLaunchUrlString(url)) {
  //     await canLaunchUrlString(url);
  //   }else{
  //     throw 'Could not launch $url';
  //   }
  // }



}