import 'package:flutter/material.dart';

import 'add.dart';

void main()
{
  runApp(MaterialApp(home: MyApp()));
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
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Sqflite Example"),),
        body: Center(),
        floatingActionButton: FloatingActionButton
          (
            onPressed: ()
            {
              Navigator.push(context,MaterialPageRoute(builder: (context) => AddPage()));
            },
            child: Icon(Icons.add),
          ),
      );
  }
}
