import 'package:flutter/material.dart';
import 'package:shop_app/order66/constants.dart';

class SocialCard extends StatefulWidget {
  final String iconSrc, name;
  final Color color;
  final Function onPress;
  const SocialCard({
    Key key,
    this.iconSrc,
    this.name,
    this.color,
    this.onPress,
  }) : super(key: key);

  @override
  _SocialCardState createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  Duration duration = Duration(milliseconds: 200);
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: widget.onPress,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: duration,
          padding: EdgeInsets.symmetric(
            vertical: oDefaultPadding / 2,
            horizontal: oDefaultPadding * 1.5,
          ),
          decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [if (isHover) oDefaultCardShadow]),
          child: Row(
            children: [
              Image.asset(
                widget.iconSrc,
                height: 80,
                width: 80,
              ),
              SizedBox(width: oDefaultPadding),
              Text(widget.name),
            ],
          ),
        ),
      ),
    );
  }
}
