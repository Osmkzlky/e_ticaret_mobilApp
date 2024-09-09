import 'package:e_ticaret_app/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const CustomAppbar({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: darkWhite,
      title: const Text(
        "tekO\$",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/ic_drawer.svg"),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/ic_search.svg"))
      ],
    );
  }
}
