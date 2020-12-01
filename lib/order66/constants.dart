import 'package:flutter/material.dart';

const iTextColor = Color(0xFF707070);
const iTextLightColor = Color(0xFF55555);

const iDefaultPadding = 20.0;

final iDefaultShadow = BoxShadow(
    offset: Offset(0, 50),
    blurRadius: 50,
    color: Color(0xFF0700B1).withOpacity(0.15));

final iDefaultCardShadow = BoxShadow(
    offset: Offset(0, 20),
    blurRadius: 50,
    color: Color(0xFF0700B1).withOpacity(0.1));

const iDefaultInputDecorationTheme = InputDecorationTheme(
    border: iDefaultOutlineInputBorder,
    enabledBorder: iDefaultOutlineInputBorder,
    focusedBorder: iDefaultOutlineInputBorder);

const iDefaultOutlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Color(0xFFCEE4FD)),
);
