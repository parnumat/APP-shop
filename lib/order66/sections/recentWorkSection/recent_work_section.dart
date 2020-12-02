import 'package:flutter/material.dart';
import 'package:shop_app/order66/sections/recentWorkSection/widget/hire_me_card.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      decoration: BoxDecoration(
          color: Color(0xFFF7E8FF).withOpacity(0.3),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/recent_work_bg.png"))),
      child: Column(
        children: [
          Transform.translate(offset: Offset(0, -80), child: HireMeCard())
        ],
      ),
    );
  }
}
