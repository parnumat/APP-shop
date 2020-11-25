import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(), backgroundColor: Colors.white, body: Body());
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0, //Out of shadow APP bar
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: iTextColor),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.search, color: iTextColor),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart_outlined, color: iTextColor),
          onPressed: () {},
        ),
        SizedBox(
          width: iDefaultPadding / 2,
        )
      ],
    );
  }
}
