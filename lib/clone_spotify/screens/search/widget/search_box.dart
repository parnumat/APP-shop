import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
            fillColor: Colors.white,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
              size: 28.0,
            ),
            filled: true,
            // border: InputBorder.,
            labelText: "Find your music",
            labelStyle: TextStyle(color: Colors.black)),
      ),
    );
  }
}
