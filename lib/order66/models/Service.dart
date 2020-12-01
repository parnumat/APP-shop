import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title, image;
  final Color color;

  Service({this.id, this.title, this.image, this.color});
}

List<Service> services = [
  Service(
    id: 1,
    title: "Backend DEV",
    image: "assets/images/showA.png",
    color: Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "Frontend DEV",
    image: "assets/images/showB.png",
    color: Color(0xFFE4FFC7),
  ),
  Service(
    id: 3,
    title: "UX/UI Design",
    image: "assets/images/showC.png",
    color: Color(0xFFFFF3DD),
  ),
  Service(
    id: 4,
    title: "API DEV",
    image: "assets/images/showD.png",
    color: Color(0xFFFFE0E0),
  ),
];
