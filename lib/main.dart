import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/common_module/app_colors.dart';
import 'package:getx_api/product_module/views/home.dart';

import 'common_module/app_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppString.fetchApiData,
        theme: ThemeData(
          primarySwatch: AppColor.mainColor,
        ),
        home: Home());
  }
}
