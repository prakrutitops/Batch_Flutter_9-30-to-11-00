import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget
{
 // const ThirdScreen({super.key});
  String a;

  ThirdScreen({required this.a});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen>
{


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Welcome ${widget.a}"),),
      body:Center
        (




        ),
     drawer: Drawer
        (
            child: ListView
              (
                children:
                [
                  UserAccountsDrawerHeader(accountName: Text("Tops Technologies"), accountEmail: Text("tops@gmail.com"),currentAccountPicture: CircleAvatar
                    (
                      backgroundColor: Colors.orange,
                      child: Text(
                        "A",
                        style: TextStyle(fontSize: 40.0),
                         ),
                    ),
                 ),
                  ListTile
                    (
                    leading: Icon(Icons.home), title: Text("Home"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.home), title: Text("Home"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.home), title: Text("Home"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.home), title: Text("Home"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
        )
    );
  }
}
