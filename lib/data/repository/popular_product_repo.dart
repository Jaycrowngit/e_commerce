import 'package:get/get.dart';
import 'package:my_app3/data/api/api_client.dart';

class PopularProductRepo extends GetxService{
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.getData("https://www.jaycrown.com/api/product/list");
  }
}