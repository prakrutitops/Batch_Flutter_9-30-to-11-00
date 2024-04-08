import 'package:flutter/material.dart';
import 'package:listexample/main2.dart';

import 'main3.dart';

void main()
{
  runApp(MaterialApp(home: MyApp2(),));
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
        appBar: AppBar
          (
            title: Text("List Example"),

          ),
          body: Center
            (
              child: ListView.builder
                (
                  itemCount: 5,
                  itemBuilder:(context,index)
                  {
                      return ListTile
                        (
                            leading: Icon(Icons.add),
                            title: Text("A"),
                            subtitle: Text("Alphabet"),
                            trailing: Icon(Icons.logout),

                        );
                  }


                ),
            ),
      );
  }
}

