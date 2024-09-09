import 'package:e_ticaret_app/model/Product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CartController extends GetxController {
  var toplamTutar = 0.obs;
  void toplamTutarSifirla() {
    toplamTutar.value = 0;
  }

  void updateToplamTutar(int deger) {
    toplamTutar.value += deger;
  }

  String textTutar(int sayi) {
    String formattedPrice = NumberFormat.currency(
      locale: 'tr_TR', // Türkçe Türkiye yerel ayarları
      symbol: '', // TL simgesi
      decimalDigits: 2, // Ondalık basamak sayısı
    ).format(sayi);
    return formattedPrice;
  }

  List<Product> yerelProduct = [
    Product(
      product_image: "assets/apple_photo/watch_s9.png",
      product_title: "Apple Watch Series 9",
      product_price: 17499,
      product_star: 5.0,
      product_colors: [
        Color(0xFF0F62FE),
        Color(0xFFFF3B30),
        Color(0xFFFFFFFF)
      ], // Blue, (PRODUCT)RED, White
      product_descTitle: "GelişmcategoryTitleiş Sağlık ve Fitness Özellikleri",
      product_descDetails:
          "Apple Watch Series 9, gelişmiş sağlık ve fitness özellikleri ile donatılmıştır. Yeni sensörler ve uygulamalar sayesinde sağlığınızı ve aktivitenizi her an izleyebilirsiniz. Daha parlak ekran ve daha hızlı performans sunan S9 çip ile günlük aktivitelerinizde size eşlik eder.",
    ),
    Product(
      product_image: "assets/apple_photo/mbp-14.png",
      product_title: "Apple 14 inç Macbook Pro",
      product_price: 67999,
      product_star: 5.0,
      product_colors: [
        Color(0xFFC0C0C0),
        Color(0x4A4A4A),
      ],
      product_descTitle: "Bir yıl boyunca ücretsiz Apple TV+ alın",
      product_descDetails:
          "14 inç MacBook Pro, M1 Pro veya M1 Max çipi ile muazzam bir performans sunar. 16 çekirdekli Neural Engine, inanılmaz hızlı grafikler ve gelişmiş yapay zeka yetenekleri sağlar. Liquid Retina XDR ekran, 1000 nit sürekli parlaklık ve 1600 nit tepe parlaklığı ile olağanüstü bir görsel deneyim sunar. Uzun pil ömrü, hızlı şarj ve MagSafe bağlantı özellikleri ile gün boyu verimli çalışmanızı sağlar. Thunderbolt 4, HDMI ve SDXC kart yuvası ile geniş bağlantı seçenekleri sunar.",
    ),
    Product(
      product_image: "assets/apple_photo/ipadair11.png",
      product_title: "Apple 11 inç İpad Air",
      product_price: 25999,
      product_star: 5.0,

      product_colors: [
        Color(0xFF4A4A4A),
        Color(0xFFC0C0C0),
        Color(0xFFF4C2C2)
      ], // Space Gray, Silver, Rose Gold
      product_descTitle: "Yaratıcılığınızı serbest bırakın",
      product_descDetails:
          "11 inç iPad Air, güçlü M1 çipi ile mükemmel performans sunar. Muhteşem Liquid Retina ekran, yüksek çözünürlüklü kameralar ve çoklu görevler için mükemmel uyumluluk sağlar. Apple Pencil (2. nesil) ve Magic Keyboard ile tam uyumluluk sunar.",
    ),
  ];
}
