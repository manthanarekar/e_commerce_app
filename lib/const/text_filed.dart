import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget Boldfont(String title, double Size, Color col) {
  return Text(title.toString(),
      style: GoogleFonts.fredoka(
          textStyle: TextStyle(
              fontSize: Size, color: col, fontWeight: FontWeight.bold)));
}

Widget RobotoBoldfont(String title, double Size, Color col) {
  return Text(title.toString(),
      style: GoogleFonts.roboto(
          textStyle: TextStyle(
              fontSize: Size, color: col, fontWeight: FontWeight.bold)));
}

Widget Regularfont(String title, double Size, Color col) {
  return Text(title.toString(),
      style:
          GoogleFonts.roboto(textStyle: TextStyle(fontSize: Size, color: col)));
}

Widget SemiBoldfont(String title, double Size, Color col) {
  return Text(title.toString(),
      style: GoogleFonts.roboto(
          textStyle: TextStyle(
              fontSize: Size, color: col, fontWeight: FontWeight.w500)));
}
