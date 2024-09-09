import 'package:e_ticaret_app/model/Product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFavoriteController extends GetxController {
  List<Product> myFavorites = [
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
  List<Product> myLastVisitedProducts = [
    Product(
      product_image: "assets/apple_photo/iphone13.png",
      product_title: "Apple İphone 13",
      product_price: 42999,
      product_star: 4.5,

      product_colors: [
        Color(0xFF4A4A4A),
        Color(0xFFC0C0C0),
        Color(0xFFF4C2C2)
      ], // Space Gray, Silver, Rose Gold
      product_descTitle: "Daha Hızlı, Daha Güçlü, Daha Parlak",
      product_descDetails:
          "iPhone 13, A15 Bionic çipi ile şimdiye kadar ki en hızlı iPhone. Daha parlak Super Retina XDR ekran, 5G hızları ve sinematik mod ile profesyonel kalitede videolar çekebilirsiniz. Suya ve toza dayanıklı tasarımı ile her koşulda kullanıma uygun.",
    ),
    Product(
      product_image: "assets/apple_photo/iphone14.png",
      product_title: "Apple İphone 14",
      product_price: 51499,
      product_star: 4.2,

      product_colors: [
        Color(0xFF2C2C2E),
        Color(0xFFF9E4B7),
        Color(0xFF0F62FE)
      ], // Midnight, Starlight, Blue
      product_descTitle: "Yeni Nesil Yenilikler",
      product_descDetails:
          "iPhone 14, yenilikçi A16 Bionic çipi ve gelişmiş kamera sistemi ile karşınızda. Daha iyi gece fotoğrafçılığı, ProRAW ve ProRes video kayıt özellikleri ile her anı profesyonelce yakalayın. Daha uzun pil ömrü ve gelişmiş 5G bağlantı özellikleri ile her zaman bağlantıda kalın.",
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
