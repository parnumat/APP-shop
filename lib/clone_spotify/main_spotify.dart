import 'package:flutter/material.dart';
import 'package:shop_app/clone_spotify/screens/home/home_screen_spotiyf.dart';
import 'package:shop_app/clone_spotify/screens/Search/search_screen_spotify.dart';
import 'package:shop_app/clone_spotify/screens/playlist/playlist_screen_spotify.dart';
import 'package:shop_app/clone_spotify/screens/profile/profile_screen_spotify.dart';
import 'package:shop_app/shop_app/constants.dart';

class MainSpotify extends StatefulWidget {
  MainSpotify({Key key}) : super(key: key);

  @override
  _MainSpotifyState createState() => _MainSpotifyState();
}

class _MainSpotifyState extends State<MainSpotify> {
  int _currentIndex = 0;
  final List<Widget> tabs = [
    HomeScreenSpotify(),
    SearchScreenSpotify(),
    PlayListScreenSpotify(),
    ProfileScreenSpotify()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: tabs[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: iConColor),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search, color: iConColor),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_music, color: iConColor),
                label: "Your Library",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.pending, color: iConColor),
                label: "Premium",
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
