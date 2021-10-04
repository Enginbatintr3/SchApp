import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cards extends StatelessWidget {
  IconData iconData;
  StatefulWidget onpress;
  String text;

  Cards(
      {Key key,
       @required this.iconData,
       @required this.onpress,
      @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => onpress),
        );
      },
      child: Container(
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
              Icon(
                iconData,
                color: Colors.grey.shade900,
                size: 50,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: GoogleFonts.openSans(
                    color: Colors.grey.shade900,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
