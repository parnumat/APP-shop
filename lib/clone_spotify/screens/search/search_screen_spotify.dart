import 'package:flutter/material.dart';
import 'package:shop_app/clone_spotify/screens/search/widget/clip_card.dart';
import 'package:shop_app/clone_spotify/screens/search/widget/search_box.dart';

class SearchScreenSpotify extends StatelessWidget {
  const SearchScreenSpotify({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 15.0),
        child: Column(
          children: [
            // Center(
            //   child: Text(
            //     "Search",
            //     textAlign: TextAlign.center,
            //     style: TextStyle(color: Colors.white, fontSize: 32.0),
            //   ),
            // ),
            SearchBox(),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                padding: EdgeInsets.all(20.0),
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: [
                  ClipCard(
                    title: "Pop\nMusic",
                    color: Colors.deepOrange,
                  ),
                  ClipCard(
                    title: "Rock",
                    color: Colors.deepPurple,
                  ),
                  ClipCard(
                    title: "Hip-Hop",
                    color: Colors.amber,
                  ),
                  ClipCard(
                    title: "Jazz",
                    color: Colors.blue,
                  ),
                  ClipCard(
                    title: "House",
                    color: Colors.green,
                  ),
                  ClipCard(
                    title: "Reggae",
                    color: Colors.red,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
