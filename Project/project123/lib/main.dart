import 'package:flutter/material.dart';
import 'package:project123/splashscreen.dart';

void main()
{
  runApp(MaterialApp
    (
      theme: ThemeData
        (
          fontFamily:AutofillHints.language,
          backgroundColor: Colors.blueAccent
        ),
      debugShowCheckedModeBanner: false,
      home:SplashScreen()
    ));
}

