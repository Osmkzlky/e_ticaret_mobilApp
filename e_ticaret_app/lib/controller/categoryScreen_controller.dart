import 'package:e_ticaret_app/model/category_model.dart';
import 'package:get/get.dart';

class CategoryScreenController extends GetxController {
  List<CategoryModel> categoryList = [
    CategoryModel(
        image: "assets/apple_photo/iphone15pro.png", title: "Telefon"),
    CategoryModel(
      image: "assets/apple_photo/watch_s9.png",
      title: "Akılı saat",
    ),
    CategoryModel(image: "assets/apple_photo/ipadpro11.png", title: "Tablet"),
    CategoryModel(
        image: "assets/apple_photo/airpodsmax.png", title: "Kulaklık"),
    CategoryModel(
        image: "assets/apple_photo/pencilPro.png", title: "Aksesuarlar")
  ].obs;
}
