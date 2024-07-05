import 'package:get/get.dart';
import 'package:hng_timbu_app/models/get_products_model.dart';
import 'package:hng_timbu_app/network/api_call.dart';

class ProductPageController extends GetxController {
  Future<GetProductsModel?> getProduct() async {
    return ApiCalls().httpGetProducts();
  }

  @override
  void onReady() {
    super.onReady();
    getProduct();
  }
}
