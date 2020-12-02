import 'package:flutter/material.dart';
import 'package:shop_app/shop_app/constants.dart';
import 'package:shop_app/shop_app/models/Product.dart';
import 'package:shop_app/shop_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: iConColor),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.search, color: iConColor),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart_outlined, color: iConColor),
          onPressed: () {},
        ),
        SizedBox(
          width: iDefaultPadding / 2,
        )
      ],
    );
  }
}
