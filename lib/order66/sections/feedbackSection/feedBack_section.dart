import 'package:flutter/material.dart';
import 'package:shop_app/order66/constants.dart';
import 'package:shop_app/order66/models/Feedback.dart';
import 'package:shop_app/order66/sections/feedbackSection/widget/feedBack_card.dart';
import 'package:shop_app/order66/sections/serviceSection/widget/service_title.dart';

class FeedBackSection extends StatelessWidget {
  const FeedBackSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: oDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          ServiceTitle(
            title: "Feedback Received",
            subTitle: "Client's testimonials that inspired me a lot",
            color: Color(0xFF00B1FF),
          ),
          SizedBox(height: oDefaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              feedbacks.length,
              (index) => FeedbackCard(
                onPress: () {},
                index: index,
              ),
            ),
          )
        ],
      ),
    );
  }
}
