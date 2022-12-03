import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/common_module/app_string.dart';
import 'package:getx_api/product_module/controllers/mobile_controller.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final MobileController mobileController = Get.put(MobileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.mobiles),
      ),
      body: Obx(() {
        if (mobileController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: mobileController.productList.length,
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              );
            },
          );
        }
      }),
    );
  }
}
