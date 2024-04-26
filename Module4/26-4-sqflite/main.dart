import 'package:dbex1/db.dart';
import 'package:flutter/material.dart';

import 'add.dart';
import 'edit.dart';

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

  MyDb db = MyDb();//database initialize
  List<Map> slist = [];

  @override
  void initState() {
    // TODO: implement initState
    //super.initState();
    db.open();//db open
    getdata();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Sqflite Example"),),
        body: SingleChildScrollView
          (
              child: Column
                (
                  children:slist.map((stuone)
                  {
                  return Card
                  (
                    child: ListTile
                  (
                    leading: Icon(Icons.person),
                    title: Text(stuone["fname"]),
                    subtitle: Text("Surname:" + stuone["lname"].toString() + ", Email: " + stuone["email"]),
                    trailing: Wrap
                      (
                      children:
                      [
                        IconButton(onPressed: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                            return Edit(email: stuone["email"]);
                          }));
                        }, icon: Icon(Icons.edit)),
                        IconButton(
                            onPressed: ()
                        {
                          db.db.rawDelete("Delete from students where email=?",[stuone["email"]]);
                          print("Deleted");
                          getdata();
                        }, icon: Icon(Icons.delete)),
                      ],
                    ),
                  )
                  );
                  }).toList()


                ),
          ),
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

  void getdata()
  {
    Future.delayed(Duration(milliseconds: 500),()async
    {
      slist = await db.db.rawQuery('SELECT * FROM students');
      setState(()
      {

      });
    });
  }
}
