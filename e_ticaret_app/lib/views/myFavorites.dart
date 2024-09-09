import 'package:e_ticaret_app/companents/product_cart.dart';
import 'package:e_ticaret_app/controller/myFavorite_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFavorites extends StatelessWidget {
  final controller = Get.put(MyFavoriteController());
  MyFavorites({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Scaffold(
          body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "Favorilerim",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(thickness: 1, color: Colors.grey),
          SizedBox(
            height: 260,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.myFavorites.length,
                itemBuilder: (context, index) =>
                    ProductCard(product: controller.myFavorites[index])),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "Son gezdiğin ürünler",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(thickness: 1, color: Colors.grey),
          /*SizedBox(
            height: 260,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.myLastVisitedProducts.length,
              itemBuilder: (context, index) =>
                  ProductCard(product: controller.myLastVisitedProducts[index]),
            ),
          ),*/
        ],
      )),
    );
  }
}
