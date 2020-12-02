import 'package:flutter/material.dart';
import 'package:shop_app/shop_app/screens/details/components/card_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CardCouter(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.favorite,
            size: 10,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
