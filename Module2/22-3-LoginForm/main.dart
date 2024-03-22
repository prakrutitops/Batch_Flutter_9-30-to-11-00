import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'login.dart';
void main()
{
  runApp(MaterialApp(home:MyApp(),debugShowCheckedModeBanner: false));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{

  @override
  void initState()
  {
    // TODO: implement initState
    super.initState();

    Timer(
        Duration(seconds: 8), () =>
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyLoginForm()))
    );
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        body: Center
          (
            child: Lottie.network("https://jenildobariya2708.000webhostapp.com/animation/Animation%20-%201707821295972.json")
          ),
      );
  }
}
