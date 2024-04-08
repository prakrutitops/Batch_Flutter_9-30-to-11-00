import 'package:flutter/material.dart';

import 'detail.dart';

class MyApp2 extends StatefulWidget
{
  const MyApp2({super.key});

  @override
  State<MyApp2> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp2>
{

  List<String> Technologies =
  [
    "Flutter",
    "Java",
    "Android",
    "Php"
  ];
  List<String> imgTechnologies =
  [
    "assets/flutter.png",
    "assets/java.png",
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
        child: ListView.builder
          (
            itemCount: Technologies.length,
            itemBuilder:(context,index)
            {
              return ListTile
                (
                    leading: Image.asset(imgTechnologies[index],width: 80, height: 80,),
                    title: Text(Technologies[index]),
                    subtitle:Column
                      (
                        children:
                        [
                          Text(Technologies[index]),
                          Text(Technologies[index]),
                          Text(Technologies[index]),
                        ],
                      ) ,
                  onTap: ()
                  {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => DetailScreen(index:index ,)));
                  },
                );
            }


        ),
    )
    );
  }
}

