import 'package:flutter/material.dart';
import 'package:shop_app/order66/constants.dart';

class AboutSectionText extends StatelessWidget {
  final String txt;
  const AboutSectionText({
    Key key,
    this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: oDefaultPadding),
      child: Text(
        txt,
        style: TextStyle(
            fontWeight: FontWeight.w200, color: oTextColor, height: 2),
      ),
    );
  }
}
