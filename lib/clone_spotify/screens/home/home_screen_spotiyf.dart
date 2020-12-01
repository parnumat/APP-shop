import 'package:flutter/material.dart';
import 'package:shop_app/clone_spotify/constants.dart';

class HomeScreenSpotify extends StatefulWidget {
  const HomeScreenSpotify({Key key}) : super(key: key);

  @override
  _HomeScreenSpotifyState createState() => _HomeScreenSpotifyState();
}

class _HomeScreenSpotifyState extends State<HomeScreenSpotify> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: iDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Recently played",
              style: TextStyle(color: iTextColor, fontSize: iTextSizeH),
            ),
            SizedBox(height: iDefaultPadding / 2),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ALbumContainer(),
                  ALbumContainer(),
                  ALbumContainer(),
                  ALbumContainer(),
                  ALbumContainer(),
                  ALbumContainer(),
                  SizedBox(
                    width: iDefaultPadding / 4,
                  )
                ],
              ),
            ),
            Text(
              "Made for you",
              style: TextStyle(color: iTextColor, fontSize: iTextSizeH),
            ),
            SizedBox(height: iDefaultPadding / 2),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ALbumContainer(),
                  ALbumContainer(),
                  ALbumContainer(),
                  ALbumContainer(),
                  ALbumContainer(),
                  ALbumContainer(),
                  SizedBox(
                    width: iDefaultPadding / 4,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

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
