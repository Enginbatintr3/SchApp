import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar appBar(dynamic onNav) {
  return AppBar(
    leading: onNav == false ? null : onNav,
    backgroundColor: Colors.grey.shade900,
    centerTitle: true,
    title: Text(
      "SchApp",
      style: GoogleFonts.openSans(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
    ),
  );
}
