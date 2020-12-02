import 'package:flutter/material.dart';
import 'package:shop_app/shop_app/constants.dart';
import 'package:shop_app/shop_app/screens/home/home_screen.dart';

class MainShopApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //close DEBUG track red
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: iTextColor),
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
