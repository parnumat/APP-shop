import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String coverUrl, albumTitle, singerName;
  const ListItem({
    Key key,
    this.coverUrl,
    this.albumTitle,
    this.singerName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () {},
          child: Container(
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    child: Image.network(coverUrl),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      albumTitle,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      singerName,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        )
      ],
    );
  }
}
