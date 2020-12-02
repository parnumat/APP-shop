import 'package:flutter/material.dart';
import 'package:shop_app/order66/constants.dart';

class ExperienceCard extends StatelessWidget {
  final String numOfExp;
  const ExperienceCard({
    Key key,
    this.numOfExp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: oDefaultPadding),
      padding: EdgeInsets.all(oDefaultPadding),
      height: 240,
      width: 255,
      decoration: BoxDecoration(
          color: Color(0xFFF7EBFF), borderRadius: BorderRadius.circular(10)),
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Color(0xFFEDD2FC),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 6,
                  color: Color(0xFFA600FF).withOpacity(0.25))
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Text(
                  numOfExp,
                  style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold,
                      // foreground: Paint()
                      //   ..style = PaintingStyle.stroke
                      //   ..strokeWidth = 6
                      //   ..color = Color(0xFFDFA3FF).withOpacity(0.5),
                      shadows: [
                        BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 10,
                            color: Color(0xFFA600FF).withOpacity(0.5))
                      ]),
                ),
                Text(
                  numOfExp,
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: oDefaultPadding / 2),
            Text(
              "Years of Experience",
              style: TextStyle(color: Color(0xFFA600FF)),
            ),
          ],
        ),
      ),
    );
  }
}
