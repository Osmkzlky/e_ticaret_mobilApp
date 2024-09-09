import 'package:e_ticaret_app/model/bottomNavBar_model.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController {
  List<BottomNavBarModel> items = [
    BottomNavBarModel(
        bottom_index: 0,
        bottom_image: "assets/icons/home.svg",
        bottom_title: "Anasayfa"),
    BottomNavBarModel(
        bottom_index: 1,
        bottom_image: "assets/icons/ic_bottom_categories.svg",
        bottom_title: "Kategoriler"),
    BottomNavBarModel(
        bottom_index: 2,
        bottom_image: "assets/icons/ic_bottom_cart.svg",
        bottom_title: "Sepet"),
    BottomNavBarModel(
        bottom_index: 3,
        bottom_image: "assets/icons/ic_bottom_save.svg",
        bottom_title: "Favorilerim"),
    BottomNavBarModel(
        bottom_index: 5,
        bottom_image: "assets/icons/help.svg",
        bottom_title: "Yardım"),
  ].obs;

  var currentIndex = 0.obs;

  void updateIndex(int index) {
    currentIndex.value = index;
  }
}
