import 'package:flutter/material.dart';
import 'package:shop_app/order66/constants.dart';
import 'package:shop_app/order66/models/RecentWork.dart';
import 'package:shop_app/order66/sections/recentWorkSection/widget/hire_me_card.dart';
import 'package:shop_app/order66/sections/recentWorkSection/widget/recent_work_card.dart';
import 'package:shop_app/order66/sections/serviceSection/widget/service_title.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: oDefaultPadding * 6),
      width: double.infinity,
      // height: 600,
      decoration: BoxDecoration(
          color: Color(0xFFF7E8FF).withOpacity(0.3),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/recent_work_bg.png"))),
      child: Column(
        children: [
          Transform.translate(offset: Offset(0, -80), child: HireMeCard()),
          ServiceTitle(
            title: "Recent Works",
            subTitle: "My Strong",
            color: Color(0xFFFFB100),
          ),
          SizedBox(
            height: oDefaultPadding * 1.5,
          ),
          SizedBox(
            width: 1110,
            child: Wrap(
                spacing: oDefaultPadding,
                runSpacing: oDefaultPadding * 2,
                children: List.generate(
                    recentWorks.length,
                    (index) => RecentWorkCard(
                          index: index,
                          onPress: () {},
                        ))),
          ),
          SizedBox(
            height: oDefaultPadding * 5,
          )
        ],
      ),
    );
  }
}
