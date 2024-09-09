// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_ticaret_app/model/Product.dart';

class HomeProductModel {
  String categoryTitle;
  List<Product> product;
  HomeProductModel({
    required this.categoryTitle,
    required this.product,
  });
}
