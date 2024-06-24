import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project123/screens/admin/bottom_navigation/upload/upload.dart';
import 'package:project123/screens/admin/front/front.dart';
import 'package:project123/screens/user/splash_screen/splash_screen.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (
      debugShowCheckedModeBanner: false,
      title: 'E wishes',
      home: SplashScreen(),
    );
  }
}