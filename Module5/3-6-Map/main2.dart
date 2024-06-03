import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class MyApp2 extends StatefulWidget
{
  @override
  State createState() => _State();

}

class _State extends State<MyApp2>
{
  @override
  Widget build(BuildContext context)
  {

    return MaterialApp(
        initialRoute: "/",
        routes:
        {
        "/": (BuildContext context) => HelloConvexAppBar(),
        },
    );


  }

}

class HelloConvexAppBar extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {

      return Scaffold(

        appBar: AppBar(title: Text('GeeksForGeeks'),

          backgroundColor: Colors.green,),
          body: Center( ),
          bottomNavigationBar: ConvexAppBar(

            style: TabStyle.flip,
            backgroundColor: Colors.green,
            items: [
              TabItem(icon: Icons.play_arrow),
              TabItem(icon: Icons.museum),
              TabItem(icon: Icons.book),
            ],
            initialActiveIndex: 1 /*optional*/,
            onTap: (int i) => print('click index=$i'),
          ),

      );

  }

}