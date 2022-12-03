import 'package:get/get.dart';
import 'package:getx_api/product_module/models/mobile_model.dart';

import '../../api_module/api_service.dart';

class MobileController extends GetxController {
  var isLoading = RxBool(true);
  var productList = <MobileJson>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  fetchProducts() async {
    try {
      isLoading(true);
      var mobileProduct = await ApiService.fetchApi();
      if (mobileProduct != null) {
        productList.assignAll(mobileProduct);
      }
    } finally {
      isLoading(false);
    }
  }
}
