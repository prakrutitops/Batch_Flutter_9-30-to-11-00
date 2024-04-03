import 'package:flutter/material.dart';

class FloationgActionButtonEx extends StatefulWidget
{
  const FloationgActionButtonEx({super.key});

  @override
  State<FloationgActionButtonEx> createState() => _FloationgActionButtonState();
}

class _FloationgActionButtonState extends State<FloationgActionButtonEx>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Data 1"),),
        body:SingleChildScrollView
          (
          child: Center
            (
              child: Column(

                children: [

                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),
                  ElevatedButton(onPressed: (){}, child: Text("1")),


                ],

              ),
            ) ,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: ()
          {

          },child: Icon(Icons.add),),
    );
  }
}
