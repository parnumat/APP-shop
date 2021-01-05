import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/voice_assistant/HomeScreen/voice_home_screen.dart';

class VoiceAssistant extends StatelessWidget {
  const VoiceAssistant({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
      debugShowCheckedModeBanner: false,
      home: VoiceHome(),
    );
  }
}
