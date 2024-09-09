import 'package:e_ticaret_app/constant/constant.dart';
import 'package:e_ticaret_app/controller/cart_controller.dart';
import 'package:e_ticaret_app/helpers/size.dart';
import 'package:e_ticaret_app/views/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  Cart({super.key});

  final controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    controller.toplamTutarSifirla();

    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: Get.height * 3 / 5,
            child: ListView.builder(
                itemCount: controller.yerelProduct.length,
                itemBuilder: (context, index) {
                  controller.updateToplamTutar(
                      controller.yerelProduct[index].product_price);
                  return GestureDetector(
                    onTap: () => Get.to(
                        ProductDetail(product: controller.yerelProduct[index])),
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      height: 15.h,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(color: Colors.black26, blurRadius: 8)
                          ]),
                      // değer toplama
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            controller.yerelProduct[index].product_image,
                            height: 50.w,
                            width: 14.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                controller.yerelProduct[index].product_title,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              Text(
                                  "${controller.textTutar(controller.yerelProduct[index].product_price)} TL",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .copyWith(fontWeight: FontWeight.bold))
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
          GestureDetector(
            onTap: () {},
            child: const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 10, bottom: 20),
                child: Text(
                  "Alışverişe Devam Et",
                  style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Tutar:",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Obx(
                () => Text(
                  "${controller.textTutar(controller.toplamTutar.value)} TL",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: blue),
                    onPressed: () {},
                    child: Text(
                      "Ödeme Ekranına Geç",
                      style: TextStyle(color: Colors.white, fontSize: 20.sp),
                    ))),
          ),
        ],
      ),
    );
  }
}
