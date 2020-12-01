import 'package:flutter/material.dart';

class Feedback {
  final String name, review, userPic;
  final int id;
  final Color color;

  Feedback({this.name, this.review, this.userPic, this.id, this.color});
}

List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "Parnumat Niropas",
    review: review,
    userPic: "assets/images/showA.png",
    color: Color(0xFFFFF3DD),
  ),
  Feedback(
    id: 2,
    name: "Parnumat Niropas",
    review: review,
    userPic: "assets/images/showA.png",
    color: Color(0xFFD9FFFD),
  ),
  Feedback(
    id: 3,
    name: "Parnumat Niropas",
    review: review,
    userPic: "assets/images/showA.png",
    color: Color(0xFFFFE0E0),
  ),
];

String review =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";
