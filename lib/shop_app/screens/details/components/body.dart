import 'package:flutter/material.dart';
import 'package:shop_app/shop_app/screens/details/components/add_to_card.dart';
import 'package:shop_app/shop_app/screens/details/components/color_and_size.dart';
import 'package:shop_app/shop_app/screens/details/components/counter_with_fav_btn.dart';
import 'package:shop_app/shop_app/screens/details/components/description.dart';
import 'package:shop_app/shop_app/screens/details/components/roduct_title_with_image.dart';
import 'package:shop_app/shop_app/models/Product.dart';
import 'package:shop_app/shop_app/constants.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.1,
                    left: iDefaultPadding,
                    right: iDefaultPadding,
                  ),
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24.0),
                          topRight: Radius.circular(24.0))),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      SizedBox(height: iDefaultPadding / 2),
                      Description(product: product),
                      SizedBox(height: iDefaultPadding / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: iDefaultPadding / 2),
                      AddToCard(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImge(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
