import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardsNotIco extends StatelessWidget {
  String hours;

  String todays;

  String lessons;

  CardsNotIco({Key key, @required this.hours, @required this.todays, @required this.lessons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.only(
        top: 20,
        bottom: 20,
        left: 15,
        right: 15,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              todays,
              style: GoogleFonts.openSans(
                  color: Colors.grey.shade900,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              hours,
              style: GoogleFonts.openSans(
                  color: Colors.grey.shade900,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              lessons,
              style: GoogleFonts.openSans(
                  color: Colors.grey.shade900,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
