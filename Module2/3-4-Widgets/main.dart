import 'package:flutter/material.dart';
import 'package:task123/splashconnection.dart';

import 'flaotingaction.dart';

void main()
{
  runApp(MaterialApp(home: SplashScreen(),));
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
    return Scaffold(appBar: AppBar(title: Text("a"),),
      body: Center
        (
          child: Column
            (

              children:
              [



                  Container(decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 3),),margin: EdgeInsets.all(16.0),padding: EdgeInsets.all(10.0),),
                  Container(decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 3),),margin: EdgeInsets.all(16.0),padding: EdgeInsets.all(10.0),)


              ],
          )
              //   margin: EdgeInsets.all(16.0),
              // decoration: BoxDecoration
              //     (
              //     border: Border.all(color: Colors.black, width: 3),
              //     ),
              //
              //
              //       child: Padding(
              //         padding: const EdgeInsets.all(10.0),
              //         child: Row
              //           (
              //
              //           children:
              //           [
              //
              //             ElevatedButton(onPressed: (){}, child: Text("1")),
              //
              //             ElevatedButton(onPressed: (){}, child: Text("2")),
              //           ],
              //         ),
              //       )
              //     ),
              //




        ),
    );
  }
}
