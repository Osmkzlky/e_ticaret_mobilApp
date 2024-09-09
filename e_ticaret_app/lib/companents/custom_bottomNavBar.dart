import 'package:e_ticaret_app/constant/constant.dart';
import 'package:e_ticaret_app/controller/bottomNav_controller.dart';
import 'package:e_ticaret_app/controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class CustomBottomNavBar extends StatelessWidget {
  final BottomNavController bottomController = Get.find();
  final CartController cartController = Get.find();

  CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 8,
      width: Get.width,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        for (int i = 0; i < bottomController.items.length; i++)
          Stack(
            clipBehavior: Clip.none,
            children: [
              GestureDetector(
                  onTap: () {
                    bottomController.updateIndex(i);
                  },
                  child: Obx(
                    () => SizedBox(
                      width: Get.width / 6,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              SvgPicture.asset(
                                bottomController.items[i].bottom_image,
                                width: 30,
                                height: 30,
                                color: bottomController.currentIndex == i
                                    ? blue
                                    : Colors.black87,
                              ),
                              Positioned.fill(
                                top: 11,
                                child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Obx(
                                      () => Text(
                                        cartController.yerelProduct.length
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: bottomController.items[i]
                                                        .bottom_index ==
                                                    2
                                                ? Colors.red
                                                : Colors.transparent,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          Text(
                            bottomController.items[i].bottom_title,
                            style: TextStyle(
                                color: bottomController.currentIndex == i
                                    ? blue
                                    : Colors.black87,
                                fontSize: bottomController.currentIndex == i
                                    ? 10
                                    : 0),
                          )
                        ],
                      ),
                    ),
                  )),
              Positioned.fill(
                top: -20,
                child: Align(
                    alignment: Alignment.topCenter,
                    child: Obx(
                      () => Container(
                        height: 5,
                        width: 32,
                        decoration: BoxDecoration(
                          color: bottomController.currentIndex == i
                              ? blue
                              : Colors.transparent,
                        ),
                      ),
                    )),
              ),
            ],
          )
      ]),
    );
  }
}
