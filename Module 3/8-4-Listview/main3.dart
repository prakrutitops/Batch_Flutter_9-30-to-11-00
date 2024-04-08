import 'package:flutter/material.dart';

class MyApp3 extends StatefulWidget
{
  const MyApp3({super.key});

  @override
  State<MyApp3> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp3>
{


  List<String> imgTechnologies =
  [
    "assets/flutter.png",
    "assets/java.png",
    "assets/android.png",
    "assets/php.png",
    "assets/android.png",
    "assets/php.png"
  ];


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar
          (
          title: Text("List Example"),

        ),
        body: Center
          (
          child: GridView.builder
            (
            itemCount: imgTechnologies.length,
            itemBuilder: (BuildContext context, int index)
              {
                return Image.asset(imgTechnologies[index]);
              },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
              (
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 4.0
              ),






          ),
        )
    );
  }
}

