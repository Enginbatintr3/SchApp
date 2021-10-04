import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/hourtod.dart';
import 'package:flutter_application_1/widgets/appBar.dart';

import 'package:flutter_application_1/widgets/cardsnotico.dart';
import 'package:flutter_application_1/widgets/navPop.dart';

class Todays extends StatefulWidget {
  const Todays({Key key}) : super(key: key);

  @override
  _TodaysState createState() => _TodaysState();
}

class _TodaysState extends State<Todays> {
  List<HoursTod> hours = [
    HoursTod(
        hours: "9.00-15.30 Okul",
        today: "Pazartesi",
        lessons: "Görsel, Fen, Bilişim, İngilizce"),
    HoursTod(
        hours: "9-00-15.30 Okul",
        today: "Salı",
        lessons: "Matematik, Fen, Türkçe, İngilizce"),
    HoursTod(
        hours: "9-00-15.30 Okul, 17.00-19.20 Dershane",
        today: "Çarşamba",
        lessons: "Beden, İnkılap, Rehberlik, Matematik"),
    HoursTod(
        hours: "9-00-15.30 Okul, 17.00-19.20 Dershane", today: "Perşembe", lessons: "Din, Müzik, Matematik, Türkçe"),
    HoursTod(
        hours: "9-00-15.30 Okul, 16.30-19.10 Deneme Sınavı", today: "Cuma", lessons: "Matematik, İngilizce, Bilişim, Türkçe"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: appBar(
        navPop(context),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CardsNotIco(
            hours: hours[index].hours,
            todays: hours[index].today,
            lessons: hours[index].lessons,
          );
        },
        itemCount: hours.length,
      ),
    );
  }
}
