import 'package:flutter/material.dart';

const oTextColor = Color(0xFF707070);
const oTextLightColor = Color(0xFF55555);

const oDefaultPadding = 20.0;

final oDefaultShadow = BoxShadow(
    offset: Offset(0, 50),
    blurRadius: 50,
    color: Color(0xFF0700B1).withOpacity(0.15));

final oDefaultCardShadow = BoxShadow(
    offset: Offset(0, 20),
    blurRadius: 50,
    color: Color(0xFF0700B1).withOpacity(0.1));

final oDefaultInputDecorationTheme = InputDecorationTheme(
    border: oDefaultOutlineInputBorder,
    enabledBorder: oDefaultOutlineInputBorder,
    focusedBorder: oDefaultOutlineInputBorder);

final oDefaultOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(50),
  borderSide: BorderSide(color: Color(0xFFCEE4FD)),
);
