import 'package:flutter/material.dart';
import 'package:shop_app/order66/constants.dart';

class DefaultButton extends StatelessWidget {
  final String text, imageSrc;
  final Function press;
  const DefaultButton({
    Key key,
    this.text,
    this.imageSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(
          vertical: oDefaultPadding, horizontal: oDefaultPadding * 2.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      color: Color(0xFFE8F0F9),
      onPressed: press,
      child: Row(
        children: [
          Image.asset(
            imageSrc,
            height: 40,
          ),
          SizedBox(width: oDefaultPadding),
          Text(text)
        ],
      ),
    );
  }
}
