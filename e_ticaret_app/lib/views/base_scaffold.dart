import 'package:e_ticaret_app/companents/custom_appbar.dart';
import 'package:e_ticaret_app/companents/custom_bottomNavBar.dart';
import 'package:e_ticaret_app/controller/bottomNav_controller.dart';
import 'package:e_ticaret_app/views/cart.dart';
import 'package:e_ticaret_app/views/categoryScreen.dart';
import 'package:e_ticaret_app/views/help_screen.dart';
import 'package:e_ticaret_app/views/home.dart';
import 'package:e_ticaret_app/views/myFavorites.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseScaffold extends StatelessWidget {
  final controller = Get.put(BottomNavController());
  BaseScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> bodyX = [
      Home(),
      CategoryScren(),
      Cart(),
      MyFavorites(),
      HelpScreen()
    ];
    return Scaffold(
      appBar: CustomAppbar(),
      body: Obx(() {
        return bodyX[controller.currentIndex.value];
      }),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
