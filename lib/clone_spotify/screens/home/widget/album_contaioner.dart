import 'package:flutter/material.dart';
import 'package:shop_app/clone_spotify/constants.dart';

class ALbumContainer extends StatelessWidget {
  const ALbumContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: iDefaultPadding / 4),
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(iRadius),
              child: Container(
                width: 100.0,
                height: 100.0,
                child: Image.asset("assets/images/BlackpinkB.png"),
              ),
            ),
            SizedBox(height: iDefaultPadding / 10),
            Text(
              "CoverName",
              style: TextStyle(
                  color: iTextColor,
                  fontWeight: FontWeight.w800,
                  fontSize: iTextSizeN),
            ),
            // SizedBox(height: 12.0),
            Text(
              "SingerName",
              style: TextStyle(
                  color: iTextColor,
                  fontWeight: FontWeight.w300,
                  fontSize: iTextSizeS),
            ),
          ],
        ),
      ),
    );
  }
}
