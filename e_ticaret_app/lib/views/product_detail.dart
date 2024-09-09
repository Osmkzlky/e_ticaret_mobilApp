// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_ticaret_app/constant/constant.dart';
import 'package:e_ticaret_app/controller/product_detail_controller.dart';
import 'package:e_ticaret_app/helpers/size.dart';
import 'package:e_ticaret_app/model/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ProductDetail extends StatefulWidget {
  final Product product;
  ProductDetail({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    final formattedPrice = NumberFormat.currency(
      locale: 'tr_TR', // Türkçe Türkiye yerel ayarları
      symbol: '', // TL simgesi
      decimalDigits: 2, // Ondalık basamak sayısı
    ).format(widget.product.product_price);
    final productDetailController =
        Get.put(ProductDetailController(product: widget.product));

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.product.product_title,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        actions: [
          Obx(
            () => IconButton(
                onPressed: () {
                  productDetailController.updateSaved();
                },
                icon: widget.product.product_isSaved == true
                    ? SvgPicture.asset(
                        "assets/icons/ic_bottom_save.svg",
                        color: orange,
                      )
                    : Icon(Icons.bookmark_border_rounded)),
          )
        ],
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(right: 10, left: 10, bottom: 20, top: 5),
          child: ListView(children: [
            Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: SizedBox(
                    height: 30.h,
                    child: Align(
                      alignment: Alignment.center,
                      child: Hero(
                        tag: widget.product.product_image,
                        child: Image.asset(
                          widget.product.product_image,
                        ),
                      ),
                    ),
                  ),
                ),
                /*Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(Icons.arrow_back)),
                    Obx(
                      () => IconButton(
                          onPressed: () {
                            productDetailController.updateSaved();
                          },
                          icon: widget.product.product_isSaved == true
                              ? SvgPicture.asset(
                                  "assets/icons/ic_bottom_save.svg",
                                  color: Constant.orange,
                                )
                              : Icon(Icons.bookmark_border_rounded)),
                    )
                  ],
                )*/
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*Text(
                  widget.product.product_title,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),*/
                Row(
                  children: [
                    Text(
                      "Colors:",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    for (int i = 0;
                        i < widget.product.product_colors.length;
                        i++)
                      Padding(
                          padding: const EdgeInsets.all(2.5),
                          child: Obx(
                            () => GestureDetector(
                              onTap: () {
                                productDetailController.updateColorIndex(i);
                              },
                              child: Container(
                                padding: EdgeInsets.all(4),
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: widget.product
                                                    .product_selectedColorIndex ==
                                                i
                                            ? widget.product.product_colors[i]
                                            : Colors.transparent)),
                                child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: widget.product.product_colors[i],
                                        shape: BoxShape.circle)),
                              ),
                            ),
                          ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.product.product_descTitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.product.product_descDetails,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(
                  height: Get.height / 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Fiyat:",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${formattedPrice} TL",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        productDetailController.updateBasket();
                      },
                      child: Obx(
                        () => Container(
                          padding: EdgeInsets.all(8),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color:
                                  widget.product.product_isBasketStatus == true
                                      ? blue
                                      : Colors.transparent,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: blue,
                              )),
                          child: DecoratedBox(
                            decoration: BoxDecoration(),
                            child: SvgPicture.asset(
                              "assets/icons/ic_bottom_cart.svg",
                              color:
                                  widget.product.product_isBasketStatus == true
                                      ? white
                                      : blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Satın Al",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                    fontWeight: FontWeight.bold, color: white),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: blue,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
