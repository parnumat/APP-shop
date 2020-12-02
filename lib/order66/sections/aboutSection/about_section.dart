import 'package:flutter/material.dart';
import 'package:shop_app/order66/constants.dart';
import 'package:shop_app/order66/sections/aboutSection/widget/about_section_text.dart';
import 'package:shop_app/order66/sections/aboutSection/widget/about_text_with_sign.dart';
import 'package:shop_app/order66/sections/aboutSection/widget/experience_card.dart';
import 'package:shop_app/order66/widget/default_button.dart';
import 'package:shop_app/order66/widget/my_outline_button.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: oDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  txt:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                ),
              ),
              ExperienceCard(
                numOfExp: "02",
              ),
              Expanded(
                child: AboutSectionText(
                  txt:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                ),
              )
            ],
          ),
          SizedBox(height: oDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                press: () {},
                imageSrc: "assets/images/hand.png",
                text: "Hi fight",
              ),
              SizedBox(width: oDefaultPadding * 1.5),
              DefaultButton(
                press: () {},
                imageSrc: "assets/images/download.png",
                text: "Download CV",
              )
            ],
          ),
        ],
      ),
    );
  }
}
