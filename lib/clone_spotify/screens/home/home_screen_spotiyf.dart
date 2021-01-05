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
    List<String> coverList = [
      "assets/icons/albemA.jpg",
      "assets/icons/albumB.jpg",
      "assets/icons/albumC.jpg",
      "assets/icons/albumD.jpg",
      "assets/icons/albumE.jpg",
      "assets/icons/albumF.jpg",
      "assets/icons/albumG.jpg",
      "assets/icons/albumH.jpg",
      "assets/icons/albumI.jpg",
      "assets/icons/albumJ.jpg",
      "assets/icons/albumK.jpg",
      "assets/icons/albumL.jpg",
    ];
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
              children: List.generate(
                coverList.length,
                (index) => ALbumContainer(url: coverList[index]),
              ),
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
              children: List.generate(
                coverList.length - 4,
                (index) => ALbumContainer(url: coverList[index]),
              ),
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
              children: List.generate(
                coverList.length - 8,
                (index) => ALbumContainer(url: coverList[index]),
              ),
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
              children: List.generate(
                coverList.length - 5,
                (index) => ALbumContainer(url: coverList[index]),
              ),
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
              children: List.generate(
                coverList.length - 3,
                (index) => ALbumContainer(url: coverList[index]),
              ),
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
              children: List.generate(
                coverList.length,
                (index) => ALbumContainer(url: coverList[index]),
              ),
            ),
          )
        ],
      ),
      // ),
    );
  }
}
