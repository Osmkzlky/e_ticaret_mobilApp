import 'package:e_ticaret_app/constant/constant.dart';
import 'package:e_ticaret_app/controller/categoryScreen_controller.dart';
import 'package:e_ticaret_app/helpers/size.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScren extends StatelessWidget {
  final controller = Get.put(CategoryScreenController());
  CategoryScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: controller.categoryList.length,
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: white,
                        boxShadow: const [
                          BoxShadow(color: Colors.black12, blurRadius: 8)
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          controller.categoryList[index].image,
                          height: 50.w,
                          width: 10.h,
                        ),
                        Text(
                          controller.categoryList[index].title,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                  ),
                )));
  }
}
