import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
      {this.image,
      this.title,
      this.description,
      this.price,
      this.size,
      this.id,
      this.color});
}

List<Product> products = [
  Product(
      id: 1,
      title: 'Office Code',
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/showA.png",
      color: Color(0xFFFB7883)),
  Product(
      id: 2,
      title: 'Belt Bag',
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/showB.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 3,
      title: 'Office Code',
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/showC.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: 'Office Code',
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/showD.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: 'Office Code',
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/showE.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 6,
      title: 'Office Code',
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/showF.png",
      color: Color(0xFFAEAEAE)),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";
