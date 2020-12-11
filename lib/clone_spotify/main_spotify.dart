import 'package:flutter/material.dart';
import 'package:shop_app/clone_spotify/screens/home/home_screen_spotiyf.dart';
import 'package:shop_app/clone_spotify/screens/Search/search_screen_spotify.dart';
import 'package:shop_app/clone_spotify/screens/playlist/playlist_screen_spotify.dart';
import 'package:shop_app/clone_spotify/screens/profile/profile_screen_spotify.dart';

class MainSpotify extends StatefulWidget {
  MainSpotify({Key key}) : super(key: key);

  @override
  _MainSpotifyState createState() => _MainSpotifyState();
}

class _MainSpotifyState extends State<MainSpotify>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  final List<Widget> tabs = [
    HomeScreenSpotify(),
    SearchScreenSpotify(),
    PlayListScreenSpotify(),
    ProfileScreenSpotify()
  ];

  // AnimationController _controllerH;
  // bool isPlaying = false;
  // @override
  // void initState() {
  //   super.initState();
  //   _controllerH =
  //       AnimationController(vsync: this, duration: Duration(milliseconds: 500));
  // }

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
                icon: Icon(
                  Icons.home,
                  size: 20,
                ),
                activeIcon: Icon(Icons.home_outlined),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 20,
                ),
                activeIcon: Icon(Icons.search_outlined),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.library_music,
                  size: 20,
                ),
                activeIcon: Icon(Icons.library_music_outlined),
                label: "Your Library",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.local_attraction,
                  size: 20,
                ),
                activeIcon: Icon(Icons.local_activity_outlined),
                label: "Premium",
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
                // index == 0 ? _controllerH.forward() : _controllerH.reverse();
              });
            },
          ),
        ),
      ),
    );
  }
}
