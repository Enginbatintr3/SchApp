  import 'package:flutter/material.dart';

GestureDetector navPop(BuildContext context) {
    return GestureDetector(
        child: Icon(Icons.arrow_back_ios, size: 24,),
        onTap: () {
          Navigator.pop(context);
        },
      );
  }