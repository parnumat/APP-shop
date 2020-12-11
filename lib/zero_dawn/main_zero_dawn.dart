import 'package:flutter/material.dart';

import 'package:shop_app/zero_dawn/homeScreen/home_screen.dart';

class MainZeroDawn extends StatelessWidget {
  const MainZeroDawn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: ZeroHomeScreen(),
    );
  }
}
