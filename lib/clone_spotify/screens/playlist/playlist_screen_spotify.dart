import 'package:flutter/material.dart';
import 'package:shop_app/clone_spotify/screens/playlist/widget/list_item.dart';

class PlayListScreenSpotify extends StatelessWidget {
  const PlayListScreenSpotify({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> coverList = [
      "https://i.pinimg.com/originals/f5/82/47/f58247463e38a536f442bfb816f62c6b.jpg",
      "https://www.designformusic.com/wp-content/uploads/2016/09/electro-synthwave-album-cover-500x500.jpg",
      "https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/102342461/original/68ef1e1fab3c4028d51f7fd7cfa9bad2232e576c/create-a-copyright-free-album-cover.jpg",
      "https://www.designformusic.com/wp-content/uploads/2016/02/volta-music-trailer-music-album-cover-design.jpg",
      "https://www.designformusic.com/wp-content/uploads/2018/07/Digital-World-album-cover-design.jpg",
      "https://www.designformusic.com/wp-content/uploads/2016/02/volta-music-trailer-music-album-cover-design.jpg"
    ];
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "Your Favorite Music",
              style: TextStyle(color: Colors.white, fontSize: 28.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView(
                  children: List.generate(
                coverList.length,
                (index) => ListItem(
                  coverUrl: coverList[index],
                  albumTitle: "AlbumTitle",
                  singerName: "SingerName",
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
