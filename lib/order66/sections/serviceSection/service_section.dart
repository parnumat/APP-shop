import 'package:flutter/material.dart';
import 'package:shop_app/order66/constants.dart';
import 'package:shop_app/order66/models/Service.dart';
import 'package:shop_app/order66/sections/serviceSection/widget/service_card.dart';
import 'package:shop_app/order66/sections/serviceSection/widget/service_title.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: oDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          ServiceTitle(
            title: "Service Offerings",
            subTitle: "My Strong Arenas",
            color: Color(0xFFFF0000),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  services.length, (index) => ServiceCard(index: index))),
        ],
      ),
    );
  }
}
