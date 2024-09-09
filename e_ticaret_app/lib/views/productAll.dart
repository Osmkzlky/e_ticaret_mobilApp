// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_ticaret_app/constant/constant.dart';
import 'package:e_ticaret_app/controller/product_cart_controller.dart';
import 'package:e_ticaret_app/helpers/size.dart';
import 'package:e_ticaret_app/model/Product.dart';
import 'package:e_ticaret_app/views/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductAll extends StatelessWidget {
  final ProductCartController controller = Get.find();
  final List<Product> products;
  final String title;
  ProductAll({
    Key? key,
    required this.products,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          height: Get.height,
          width: Get.width,
          child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) => Obx(
                    () => GestureDetector(
                      onTap: () {
                        Get.to(ProductDetail(product: products[index]));
                      },
                      child: Card(
                        color: white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: SizedBox(
                                    height: 18.h,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Hero(
                                        tag: products[index].product_image,
                                        child: Image.asset(
                                          products[index].product_image,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(
                                  flex: 2,
                                ),
                                Expanded(
                                  flex: 10,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          products[index].product_title,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: IconButton(
                                              onPressed: () {
                                                controller.updateSaved();
                                              },
                                              icon: products[index]
                                                          .product_isSaved ==
                                                      true
                                                  ? const Icon(
                                                      Icons.bookmark,
                                                      color: orange,
                                                    )
                                                  : const Icon(
                                                      Icons
                                                          .bookmark_border_rounded,
                                                      color: black,
                                                    )),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Text(
                                      "${controller.textTutar(products[index].product_price)} TL",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(
                                  height: 0.5.h,
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: orange,
                                        size: 15.sp,
                                      ),
                                      Expanded(
                                        flex: 5,
                                        child: Text(
                                          products[index]
                                              .product_star
                                              .toString(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ),
                  )),
        ));
  }
}
