import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class Categories extends StatefulWidget {
  Categories({Key key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Shoes", "Casual", "Sneaers", "Slippers"];
  int selectIndex = 0; //By defaut our first item will be lected
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: iDefaultPadding),
      child: SizedBox(
        height: 26,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: iDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectIndex = index;
                });
              },
              child: Text(
                categories[index],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectIndex == index ? iTextColor : iTextLightColor),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: iDefaultPadding / 4),
              height: 2,
              width: 30,
              color: selectIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      );
}
