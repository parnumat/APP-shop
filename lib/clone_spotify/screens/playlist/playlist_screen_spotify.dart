import 'package:flutter/material.dart';
import 'package:shop_app/clone_spotify/screens/playlist/widget/list_item.dart';

class PlayListScreenSpotify extends StatelessWidget {
  const PlayListScreenSpotify({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> coverList = [
      "assets/icons/albemA.jpg",
      "assets/icons/albumB.jpg",
      "assets/icons/albumC.jpg",
      "assets/icons/albumD.jpg",
      "assets/icons/albumE.jpg",
      "assets/icons/albumF.jpg",
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
