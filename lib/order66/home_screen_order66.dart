import 'package:flutter/material.dart';
import 'package:shop_app/order66/constants.dart';
import 'package:shop_app/order66/sections/aboutSection/about_section.dart';
import 'package:shop_app/order66/sections/feedbackSection/feedBack_section.dart';
import 'package:shop_app/order66/sections/ontactSection/contact_section.dart';
import 'package:shop_app/order66/sections/recentWorkSection/recent_work_section.dart';
import 'package:shop_app/order66/sections/serviceSection/service_section.dart';
import 'package:shop_app/order66/sections/topSection/top_section.dart';

class HomeScreenOrder66 extends StatelessWidget {
  const HomeScreenOrder66({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            SizedBox(height: oDefaultPadding * 2),
            AboutSection(),
            ServiceSection(),
            RecentWorkSection(),
            FeedBackSection(),
            SizedBox(height: oDefaultPadding),
            ContactSection(),
          ],
        ),
      ),
    );
  }
}
