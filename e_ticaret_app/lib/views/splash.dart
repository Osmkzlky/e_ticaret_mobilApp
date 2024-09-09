import 'package:e_ticaret_app/constant/constant.dart';
import 'package:e_ticaret_app/views/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.off(() => BaseScaffold());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkWhite,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 15,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    "assets/images/splash6.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: SpinKitDoubleBounce(
                color: blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
