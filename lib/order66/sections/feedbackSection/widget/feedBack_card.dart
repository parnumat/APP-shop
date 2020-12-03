import 'package:flutter/material.dart';
import 'package:shop_app/order66/constants.dart';
import 'package:shop_app/order66/models/Feedback.dart';

class FeedbackCard extends StatefulWidget {
  final int index;
  final Function onPress;
  const FeedbackCard({
    Key key,
    this.index,
    this.onPress,
  }) : super(key: key);

  @override
  _FeedbackCardState createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  Duration duration = Duration(milliseconds: 200);
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPress,
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: duration,
        margin: EdgeInsets.only(top: oDefaultPadding * 3),
        padding: EdgeInsets.symmetric(horizontal: oDefaultPadding),
        height: 350,
        width: 350,
        decoration: BoxDecoration(
          color: feedbacks[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) oDefaultCardShadow],
        ),
        child: Column(
          children: [
            Transform.translate(
              offset: Offset(0, -55),
              child: AnimatedContainer(
                duration: duration,
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 10),
                  boxShadow: [if (isHover) oDefaultCardShadow],
                  image: DecorationImage(
                    image: AssetImage(feedbacks[widget.index].userPic),
                  ),
                ),
              ),
            ),
            Text(
              feedbacks[widget.index].review,
              style: TextStyle(
                color: oTextColor,
                fontSize: 18,
                fontWeight: FontWeight.w200,
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
            ),
            SizedBox(height: oDefaultPadding * 2),
            Text(
              "Delan Noelle",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
