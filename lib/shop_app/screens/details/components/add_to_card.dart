import 'package:flutter/material.dart';
import 'package:shop_app/shop_app/constants.dart';
import 'package:shop_app/shop_app/models/Product.dart';

class AddToCard extends StatelessWidget {
  const AddToCard({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: iDefaultPadding),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              right: iDefaultPadding,
            ),
            height: 58,
            width: 58,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: product.color,
                )),
            child: IconButton(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: product.color,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                color: product.color,
                onPressed: () {},
                child: Text(
                  "Buy Now".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
