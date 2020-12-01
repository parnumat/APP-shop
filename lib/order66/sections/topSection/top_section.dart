import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background.jpg"),
        ),
      ),
    );
  }
}
