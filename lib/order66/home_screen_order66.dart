import 'package:flutter/material.dart';
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
          ],
        ),
      ),
    );
  }
}
