import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_application_1/screens/calc/calc.dart';
import 'package:flutter_application_1/screens/home/notelist.dart';
import 'package:flutter_application_1/screens/timer/timpa.dart';
import 'package:flutter_application_1/screens/todays/today.dart';
import 'package:flutter_application_1/widgets/appBar.dart';
import 'package:flutter_application_1/widgets/cards.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Cards> cardsdata = [
    Cards(
      iconData: Icons.library_books,
      onpress: NoteList(),
      text: "Ödevler",
    ),
    Cards(
      iconData: Icons.timer,
      onpress: Pomodoro(),
      text: "Kronometre",
    ),
    Cards(
      iconData: Icons.calendar_today,
      onpress: Todays(),
      text: "Saatler",
    ),
    Cards(
      iconData: Icons.calculate,
      onpress: CalcApp(),
      text: "Hesap Makinesi",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: appBar(false),
      body: ListView.builder(
        itemCount: cardsdata.length,
        itemBuilder: (context, index) {
          return Cards(
            iconData: cardsdata[index].iconData,
            onpress: cardsdata[index].onpress,
            text: cardsdata[index].text,
          );
        },
      ),
    );
  }
}

