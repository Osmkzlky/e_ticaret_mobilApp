// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_ticaret_app/model/Product.dart';
import 'package:get/get.dart';

class ProductDetailController extends GetxController {
  final Product product;
  ProductDetailController({
    required this.product,
  });

  void updateColorIndex(int index) {
    product.product_selectedColorIndex.value = index;
  }

  void updateSaved() {
    product.product_isSaved.value = !product.product_isSaved.value;
  }

  void updateBasket() {
    product.product_isBasketStatus.value =
        !product.product_isBasketStatus.value;
  }
}
