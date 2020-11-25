import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/home/components/categories.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: iDefaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: iDefaultPadding),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.70),
              itemCount: products.length,
              itemBuilder: (context, index) => ItemCard(),
            ),
          ),
        )
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final Product product;
  final Function ress;
  const ItemCard({
    Key key,
    this.product,
    this.ress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(iDefaultPadding),
          height: 180,
          width: 160,
          decoration: BoxDecoration(
              color: products[0].color,
              borderRadius: BorderRadius.circular(16)),
          child: Image.asset(
            products[0].image,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: iDefaultPadding / 4),
          child: Text(
            products[0].title,
            style: TextStyle(color: iTextColor),
          ),
        ),
        Text(
          "\$${products[0].price}",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
