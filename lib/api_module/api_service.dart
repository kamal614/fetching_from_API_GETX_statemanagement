import 'dart:convert';

import 'package:getx_api/product_module/models/mobile_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static var client = http.Client();
  static Future<MobileJson?> fetchApi() async {
    var response = await client
        .get(Uri.parse("https://dummyjson.com/products/search?q=phone"));
    if (response.statusCode == 200) {
      // var jsonString = response.body;
      // return mobileJsonFromJson(jsonString);

      MobileJson mobileJson = MobileJson.fromJson(jsonDecode(response.body));
      return mobileJson;
    }
  }
}
