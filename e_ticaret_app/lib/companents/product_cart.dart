// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:e_ticaret_app/constant/constant.dart';
import 'package:e_ticaret_app/controller/product_cart_controller.dart';
import 'package:e_ticaret_app/helpers/size.dart';
import 'package:e_ticaret_app/model/Product.dart';
import 'package:e_ticaret_app/views/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ProductCard extends StatefulWidget {
  final Product product;
  ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    final productCartController =
        Get.put(ProductCartController(product: widget.product));
    final formattedPrice = NumberFormat.currency(
      locale: 'tr_TR', // Türkçe Türkiye yerel ayarları
      symbol: '', // TL simgesi
      decimalDigits: 2, // Ondalık basamak sayısı
    ).format(widget.product.product_price);
    return SizedBox(
        width: Get.width / 2,
        child: GestureDetector(
          onTap: () {
            Get.to(ProductDetail(product: widget.product));
          },
          child: Obx(
            () => Card(
              color: white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: 17.h,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Hero(
                              tag: widget.product.product_image,
                              child: Image.asset(
                                widget.product.product_image,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 3,
                      ),
                      Expanded(
                        flex: 10,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                widget.product.product_title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                    onPressed: () {
                                      productCartController.updateSaved();
                                    },
                                    icon: widget.product.product_isSaved == true
                                        ? const Icon(
                                            Icons.bookmark,
                                            color: orange,
                                          )
                                        : const Icon(
                                            Icons.bookmark_border_rounded,
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
                          "${formattedPrice} TL",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Expanded(
                        flex: 5,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: orange,
                              size: 15,
                            ),
                            Text(
                              widget.product.product_star.toString(),
                              style: const TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
            ),
          ),
        ));
  }
}
