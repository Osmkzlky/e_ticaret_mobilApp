import 'dart:async';

import 'package:e_ticaret_app/companents/product_cart.dart';
import 'package:e_ticaret_app/constant/constant.dart';
import 'package:e_ticaret_app/controller/home_controller.dart';
import 'package:e_ticaret_app/helpers/size.dart';
import 'package:e_ticaret_app/model/home_product_model.dart';
import 'package:e_ticaret_app/views/productAll.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final homeController = Get.put(HomeController());
  Timer? timer;
  @override
  void initState() {
    super.initState();

    // Sayfa bağlanana kadar kontrol edip, sonrasında timer başlatma işlemi
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startPageChangeTimer();
    });
  }

  void _startPageChangeTimer() {
    timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      // PageController ScrollView'a bağlanana kadar bekle
      if (homeController.pageController.hasClients) {
        homeController.pageChange();
      } else {
        print('PageController henüz ScrollView\'a bağlanmadı.');
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkWhite,
      body: ListView(
        children: [
          campaigns(),
          homeProduct(homeController.hotModel),
          homeProduct(homeController.mostPopuler),
          homeProduct(homeController.appleAccessory),
        ],
      ),
    );
  }

  Widget homeProduct(HomeProductModel model) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 1.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                model.categoryTitle,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(ProductAll(
                    products: model.product,
                    title: model.categoryTitle,
                  ));
                },
                child: Text(
                  "Tümü",
                  style: TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.underline,
                      fontSize: 15.sp),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 65.w,
            child: ListView.builder(
                itemCount: model.product.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                    child: ProductCard(product: model.product[index]))),
          )
        ],
      ),
    );
  }

  SizedBox campaigns() {
    return SizedBox(
      height: 50.w,
      child: Stack(
        children: [
          PageView.builder(
              onPageChanged: (index) {
                homeController.updeteIndexCampaigns(index);
              },
              controller: homeController.pageController,
              itemCount: homeController.campaigns.length,
              itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.all(3),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.sp),
                    child: Image.asset(homeController.campaigns[index]),
                  ))),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < homeController.campaigns.length; i++)
                    Obx(
                      () => Container(
                        margin: const EdgeInsets.all(4),
                        height: 1.h,
                        width: 1.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: homeController.currentIndexCampaigns == i
                                ? Colors.white
                                : Colors.grey),
                      ),
                    )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
