import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SchApp",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
     
    );
  }
}