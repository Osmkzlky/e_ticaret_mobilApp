// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_ticaret_app/model/Product.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ProductCartController extends GetxController {
  final Product product;
  ProductCartController({
    required this.product,
  });
  void updateSaved() {
    product.product_isSaved.value = !product.product_isSaved.value;
  }

  String textTutar(int sayi) {
    String formattedPrice = NumberFormat.currency(
      locale: 'tr_TR', // Türkçe Türkiye yerel ayarları
      symbol: '', // TL simgesi
      decimalDigits: 2, // Ondalık basamak sayısı
    ).format(sayi);
    return formattedPrice;
  }
}
