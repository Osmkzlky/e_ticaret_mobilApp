import 'package:e_ticaret_app/constant/constant.dart';
import 'package:e_ticaret_app/helpers/size.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(physics: const BouncingScrollPhysics(), children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 10),
          child: Text(
            "Müşteri Hizmetleri",
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        const CustomTextButton(title: "Sipariş Takibi"),
        buildExpansionTile("Yardım Merkezi", [
          "Sıkça Sorulan Sorular",
          "Sipariş",
          "Kargo ve Teslimat",
          "Kredi Kartı ve Ödeme"
        ]),
        const CustomTextButton(title: "tekO\$ Hizmet"),
        const CustomTextButton(title: "Canlı Destek"),
        const CustomTextButton(title: "Mağaza Bul"),
        const CustomTextButton(title: "Çağrı Merkezi"),
        const CustomTextButton(title: "Sipariş Takibi"),
        buildExpansionTile("Kişisel Verileri Koruma İzinleri", [
          "Gizlilik Sözleşmesi",
          "Kişisel Verilerin Korunması",
          "Üyelik Sözleşmesi",
          "Canlı Chat"
              "Görüntülü Görüşme Kuralları"
        ]),
        const CustomTextButton(title: "Uygulama Sürümü"),
      ]),
    );
  }

  ExpansionTile buildExpansionTile(String title, List<String> detail) {
    return ExpansionTile(
      collapsedTextColor: blue,
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
      ),
      trailing: const Icon(
        Icons.expand_more,
        color: blue,
      ),
      children: [
        for (int i = 0; i < detail.length; i++)
          TextButton(onPressed: () {}, child: Text(detail[i]))
      ],
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String title;
  const CustomTextButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 6),
        child: TextButton(
            onPressed: () {},
            child: Text(
              title,
              style: TextStyle(
                  color: blue, fontWeight: FontWeight.bold, fontSize: 15.sp),
            )),
      ),
    );
  }
}
