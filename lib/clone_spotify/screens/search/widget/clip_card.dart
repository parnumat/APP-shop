import 'package:flutter/material.dart';

class ClipCard extends StatelessWidget {
  final String title;
  final Color color;
  const ClipCard({
    Key key,
    this.title,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        padding: EdgeInsets.all(12.0),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
        color: color,
      ),
    );
  }
}
