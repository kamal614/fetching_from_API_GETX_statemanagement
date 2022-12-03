import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/common_module/app_colors.dart';
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
            itemCount: mobileController.productList[0].products.length,
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                child: Center(
                    child: Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: AppColor.mainColor,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: Image.network(mobileController
                              .productList[0].products[index].images.first),
                          title: Text(
                              mobileController
                                  .productList[0].products[index].title,
                              style: const TextStyle(fontSize: 30.0)),
                          subtitle: Text(
                              mobileController
                                  .productList[0].products[index].description,
                              style: const TextStyle(fontSize: 18.0)),
                        ),
                      ],
                    ),
                  ),
                )),
              );
            },
          );
        }
      }),
    );
  }
}
