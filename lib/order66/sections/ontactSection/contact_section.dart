import 'package:flutter/material.dart';
import 'package:shop_app/order66/constants.dart';
import 'package:shop_app/order66/sections/ontactSection/widget/socail_card.dart';
import 'package:shop_app/order66/sections/serviceSection/widget/service_title.dart';
import 'package:shop_app/order66/widget/default_button.dart';
import 'package:shop_app/order66/widget/my_outline_button.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg_img_2.png"),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: oDefaultPadding * 2.5),
          ServiceTitle(
            title: "Contact Me",
            subTitle: "For Project inquiry and information",
            color: Color(0xFF07E24A),
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 1110),
            margin: EdgeInsets.only(top: oDefaultPadding * 2),
            padding: EdgeInsets.all(oDefaultPadding * 3),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SocialCard(
                      iconSrc: "assets/images/skype.png",
                      color: Color(0xFFD9FFFC),
                      name: "Skype",
                      onPress: () {},
                    ),
                    SocialCard(
                      iconSrc: "assets/images/whatsapp.png",
                      color: Color(0xFFE4FFC7),
                      name: "Whats app",
                      onPress: () {},
                    ),
                    SocialCard(
                      iconSrc: "assets/images/messanger.png",
                      color: Color(0xFFE8F0F9),
                      name: "Message",
                      onPress: () {},
                    ),
                  ],
                ),
                SizedBox(height: oDefaultPadding * 2),
                ContactForm()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: oDefaultPadding * 2.5,
        runSpacing: oDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Your Name",
                hintText: "Enter Your Name",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Email Address",
                hintText: "Enter Your Email Address",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Project Budget",
                hintText: "Select Project Budget",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Your Name",
                hintText: "Enter Your Name",
              ),
            ),
          ),
          TextField(
            maxLines: 5,
            onChanged: (value) {},
            decoration: InputDecoration(
              labelText: "Description",
              hintText: "Write some description",
            ),
          ),
          SizedBox(height: oDefaultPadding / 2),
          Center(
            child: FittedBox(
              child: DefaultButton(
                imageSrc: "assets/images/contact_icon.png",
                text: "Contact Me",
                press: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
