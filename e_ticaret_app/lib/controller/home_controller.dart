import 'package:e_ticaret_app/model/Product.dart';
import 'package:e_ticaret_app/model/home_product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<String> campaigns = [
    "assets/images/watch_kampanya.png",
    "assets/images/mac_kampanya.png",
    "assets/images/kampanya3.png",
  ];
  var currentIndexCampaigns = 0.obs;
  PageController pageController = PageController(initialPage: 0);

  void pageChange() {
    if (currentIndexCampaigns.value < campaigns.length - 1) {
      currentIndexCampaigns.value++;
    } else {
      currentIndexCampaigns.value = 0;
    }

    if (pageController.hasClients) {
      pageController.animateToPage(
        currentIndexCampaigns.value,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      print('PageController henüz ScrollView\'a bağlanmadı.');
    }
  }

  void updeteIndexCampaigns(int index) {
    currentIndexCampaigns.value = index;
  }

  HomeProductModel hotModel = HomeProductModel(
      categoryTitle: "Fırsatlar",
      product: [
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
          product_image: "assets/apple_photo/imac24.png",
          product_title: "Apple iMac 24 M3",
          product_price: 53999,
          product_star: 4.1,
          product_colors: [
            Color(0xFF70C1E6),
            Color(0xFFA8D8AD),
            Color(0xFFFFCBCB)
          ], // Blue, Green, Pink
          product_descTitle: "Üstün performans, çarpıcı tasarım",
          product_descDetails:
              "24 inç iMac, M3 çipi ile üstün performans sunar. Göz alıcı 4.5K Retina ekran, 1080p FaceTime HD kamera ve etkileyici ses sistemi ile her şey daha canlı ve net. M3 çipi sayesinde en zorlu işlerinizi bile kolayca halledebilirsiniz.",
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
      ].obs);
  HomeProductModel mostPopuler = HomeProductModel(
      categoryTitle: "Popüler Ürünler",
      product: [
        Product(
          product_image: "assets/apple_photo/iphone15.png",
          product_title: "Apple İphone 15",
          product_price: 58499,
          product_star: 4.4,

          product_colors: [
            Color(0xFF0F62FE),
            Color(0xFFFF3B30),
            Color(0xFFFFFFFF)
          ], // Blue, (PRODUCT)RED, White
          product_descTitle: "İleri Teknoloji ve Şık Tasarım",
          product_descDetails:
              "iPhone 15, yeni A16 Bionic çipi ve gelişmiş kamera sistemi ile sınırları zorluyor. HDR ekran, daha iyi gece modu ve sinematik video çekim özellikleri ile her anı profesyonelce yakalayın. Dayanıklı seramik kalkan ve suya dayanıklı tasarımı ile daha uzun ömürlü.",
        ),
        Product(
          product_image: "assets/apple_photo/ipadpro11.png",
          product_title: "Apple 11 inç İpad Pro",
          product_price: 45999,
          product_star: 4.3,

          product_colors: [
            Color(0xFF607D8B),
            Color(0xFF4CAF50),
            Color(0xFFFFEB3B)
          ], // Blue Grey, Green, Yellow
          product_descTitle: "Güç ve Taşınabilirliğin Mükemmel Dengesi",
          product_descDetails:
              "11 inç iPad Pro, M2 çipi ile güçlü performans sunar. Liquid Retina XDR ekran, ultra geniş ve TrueDepth kamera sistemi ile yaratıcı projeleriniz için ideal. 5G hızları ve Thunderbolt bağlantı özellikleri ile her zaman bağlantıda kalın.",
        ),
        Product(
          product_image: "assets/apple_photo/ipad_mini.png",
          product_title: "Apple 8.3 inç İpad mini A15",
          product_price: 22999,
          product_star: 4.7,

          product_colors: [
            Color(0xFF9C27B0),
            Color(0xFFE91E63),
            Color(0xFF4CAF50)
          ], // Purple, Pink, Green
          product_descTitle: "Kompakt Güç",
          product_descDetails:
              "8.3 inç iPad mini, A15 Bionic çipi ile taşınabilirlik ve performansı bir araya getirir. Gelişmiş kameralar, True Tone ve HDR destekli Liquid Retina ekran ile günlük görevleriniz ve eğlence için mükemmel.",
        ),
        Product(
          product_image: "assets/apple_photo/iphone15pro.png",
          product_title: "Apple İphone 15 Pro",
          product_price: 75499,
          product_star: 4.9,

          product_colors: [
            Color(0xFFFF3B30),
            Color(0xFF607D8B),
            Color(0xFFB0BEC5)
          ], // (PRODUCT)RED, Blue Grey, Grey
          product_descTitle: "Profesyonel Performans",
          product_descDetails:
              "iPhone 15 Pro, güçlü A17 Bionic çipi ve ProMotion teknolojisi ile en üst düzey performans sunar. Pro kamera sistemi, LiDAR tarayıcı ve ProRAW ile her anı en ince ayrıntısına kadar yakalayın. Dayanıklı titanyum çerçeve ve seramik kalkan ile daha sağlam.",
        ),
        Product(
          product_image: "assets/apple_photo/mba13_m3.png",
          product_title: "Apple MacBook Air M3 çipli 13 inç",
          product_price: 24999,
          product_star: 4.3,
          product_colors: [
            Color(0xFFFFEB3B),
            Color(0xFFB0BEC5),
            Color(0xFF000000)
          ], // Yellow Accent, Grey, Black
          product_descTitle: "Hafif ve Güçlü",
          product_descDetails:
              "13 inç MacBook Air, M3 çipi ile üstün performans sunar. Retina ekran, Magic Keyboard ve Touch ID ile mükemmel bir kullanıcı deneyimi. İnce ve hafif tasarımı ile her yerde taşıyabileceğiniz ideal bir dizüstü bilgisayar.",
        )
      ].obs);
  HomeProductModel appleAccessory = HomeProductModel(
      categoryTitle: "Apple Aksesuar",
      product: [
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
          product_descTitle:
              "GelişmcategoryTitleiş Sağlık ve Fitness Özellikleri",
          product_descDetails:
              "Apple Watch Series 9, gelişmiş sağlık ve fitness özellikleri ile donatılmıştır. Yeni sensörler ve uygulamalar sayesinde sağlığınızı ve aktivitenizi her an izleyebilirsiniz. Daha parlak ekran ve daha hızlı performans sunan S9 çip ile günlük aktivitelerinizde size eşlik eder.",
        ),
        Product(
          product_image: "assets/apple_photo/watch_se.png",
          product_title: "Apple Watch SE",
          product_price: 10999,
          product_star: 4.2,
          product_colors: [
            Color(0xFF607D8B),
            Color(0xFF4CAF50),
            Color(0xFFFFEB3B)
          ], // Blue Grey, Green, Yellow
          product_descTitle: "Temel Özellikler, Harika Performans",
          product_descDetails:
              "Apple Watch SE, temel sağlık ve fitness özellikleri ile birlikte gelir. Aktivite izleme, uyku takibi ve acil durum SOS özellikleri ile günlük yaşamınıza uyum sağlar. Büyük Retina ekran ve hızlı performans sunan S5 çip ile her an yanınızda.",
        ),
        Product(
          product_image: "assets/apple_photo/watch_ultra2.png",
          product_title: "Apple Watch Ultra 2",
          product_price: 46499,
          product_star: 4.3,
          product_colors: [
            Color(0xFF000000),
            Color(0xFFFF9500),
            Color(0xFF34C759)
          ], // Black, Orange, Green
          product_descTitle: "Ekstrem Sporlar İçin Tasarlandı",
          product_descDetails:
              "Apple Watch Ultra 2, ekstrem sporlar ve açık hava maceraları için özel olarak tasarlanmıştır. Titanyum kasa, suya dayanıklılık ve yüksek performanslı sensörler ile donatılmıştır. Gelişmiş GPS ve uzun pil ömrü ile her türlü koşulda güvenilir bir yol arkadaşıdır.",
        ),
        Product(
          product_image: "assets/apple_photo/pencilPro.png",
          product_title: "Apple Pencil Pro",
          product_price: 5299,
          product_star: 5.0,
          product_colors: [Color(0xFFFFFFFF), Color(0xFF000000)],
          product_descTitle: "Profesyonel Çizim ve Not Alma",
          product_descDetails:
              "Apple Pencil Pro, profesyonel çizim ve not alma ihtiyaçlarınız için geliştirilmiştir. Hassasiyet, düşük gecikme süresi ve eğim algılama özellikleri ile mükemmel bir kullanıcı deneyimi sunar. iPad Pro ve diğer uyumlu iPad modelleri ile kusursuz çalışır.",
        ),
        Product(
          product_image: "assets/apple_photo/airpodsmax.png",
          product_title: "Apple Airpods Max",
          product_price: 24849,
          product_star: 4.1,
          product_colors: [
            Color(0xFF000000),
            Color(0xFFB0BEC5),
            Color(0xFF34C759)
          ], // Black, Grey, Green
          product_descTitle: "Üstün Ses Kalitesi ve Konfor",
          product_descDetails:
              "Apple AirPods Max, yüksek kaliteli ses ve konforu bir araya getirir. Aktif gürültü engelleme, şeffaf mod ve uzamsal ses özellikleri ile mükemmel bir dinleme deneyimi sunar. Hafif ve dayanıklı tasarımı ile uzun süreli kullanımda bile rahatlık sağlar.",
        ),
        Product(
          product_image: "assets/apple_photo/airpodsPro2.png",
          product_title: "Apple Airpods Pro (2.nesil)",
          product_price: 9349,
          product_star: 4.3,
          product_colors: [Color(0xFFFFFFFF)], // White
          product_descTitle: "Gelişmiş Gürültü Engelleme ve Ses Kalitesi",
          product_descDetails:
              "Apple AirPods Pro (2. nesil), gelişmiş gürültü engelleme ve yüksek kaliteli ses sunar. Uyarlanabilir EQ, şeffaf mod ve kişiselleştirilmiş oturma özellikleri ile her anınıza uyum sağlar. Suya ve tere dayanıklı yapısı ile her türlü aktiviteye uygun.",
        )
      ].obs);
}
