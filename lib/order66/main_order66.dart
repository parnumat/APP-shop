import 'package:flutter/material.dart';
import 'package:shop_app/order66/home_screen_order66.dart';

class MainOrder66 extends StatelessWidget {
  const MainOrder66({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
      // theme: ThemeData(fontFamily: 'Prompt'),
      home: HomeScreenOrder66(),
    );
  }
}
