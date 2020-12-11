import 'package:flutter/material.dart';
import 'package:shop_app/clone_spotify/constants.dart';
import 'package:shop_app/clone_spotify/screens/home/widget/album_contaioner.dart';

class HomeScreenSpotify extends StatefulWidget {
  const HomeScreenSpotify({Key key}) : super(key: key);

  @override
  _HomeScreenSpotifyState createState() => _HomeScreenSpotifyState();
}

class _HomeScreenSpotifyState extends State<HomeScreenSpotify> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // padding: EdgeInsets.symmetric(vertical: iDefaultPadding / 5),
      // child: SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      child: ListView(
        scrollDirection: Axis.vertical,
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Recently played",
            style: TextStyle(color: iTextColor, fontSize: iTextSizeH),
          ),
          SizedBox(height: iDefaultPadding / 2),
          Container(
            height: 150,
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
            "Recently played",
            style: TextStyle(color: iTextColor, fontSize: iTextSizeH),
          ),
          SizedBox(height: iDefaultPadding / 2),
          Container(
            height: 150,
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
            "Recently played",
            style: TextStyle(color: iTextColor, fontSize: iTextSizeH),
          ),
          SizedBox(height: iDefaultPadding / 2),
          Container(
            height: 150,
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
            "Recently played",
            style: TextStyle(color: iTextColor, fontSize: iTextSizeH),
          ),
          SizedBox(height: iDefaultPadding / 2),
          Container(
            height: 150,
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
            "Recently played",
            style: TextStyle(color: iTextColor, fontSize: iTextSizeH),
          ),
          SizedBox(height: iDefaultPadding / 2),
          Container(
            height: 150,
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
          Container(
            height: 150,
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
      // ),
    );
  }
}
