import 'package:get/get.dart';
import 'package:my_app3/controller/popular_product_controller.dart';
import 'package:my_app3/data/api/api_client.dart';
import 'package:my_app3/data/repository/popular_product_repo.dart';

Future<void> init()async{
  //api Client
  Get.lazyPut(()=>ApiClient(appBaseUrl:"https/:www.jaycrown.com"));

//repos
  Get.lazyPut(()=>PopularProductRepo(apiClient: Get.find()));

//Controller
Get.lazyPut(()=>PopularProductController(PopularProductRepo: Get.find()));

}