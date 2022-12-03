import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_api/product_module/models/mobile_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static var client = http.Client();
  static Future<MobileJson?> fetchApi() async {
    var response =
        await client.get(Uri.parse("https://dummyjson.com/products/"));
    if (response.statusCode == 200) {
      MobileJson mobileJson = MobileJson.fromJson(jsonDecode(response.body));
      return mobileJson;
    }
  }
}
