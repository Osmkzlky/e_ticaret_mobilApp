import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Product {
  String product_image;
  String product_title;
  int product_price;
  double product_star;
  var product_isSaved = false.obs;
  String product_descTitle;
  String product_descDetails;
  List<Color> product_colors;
  var product_selectedColorIndex = 0.obs;
  var product_isBasketStatus = false.obs;

  Product({
    required this.product_image,
    required this.product_title,
    required this.product_price,
    required this.product_star,
    required this.product_descTitle,
    required this.product_descDetails,
    required this.product_colors,
  });
}
