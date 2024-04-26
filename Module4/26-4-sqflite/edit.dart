import 'package:flutter/material.dart';

import 'db.dart';
import 'main.dart';

class Edit extends StatefulWidget
{
  //const Edit({super.key});
  String email;

  Edit({required this.email});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit>
{

  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();


  MyDb db = MyDb();
  @override
  void initState() {
    // TODO: implement initState
    //super.initState();
  db.open();

  //get data inbuilt from db
  Future.delayed(Duration(milliseconds: 500),()async
  {

    var data = await db.getstudent(widget.email);

    if(data!=null)
      {
        fname.text = data["fname"];
        lname.text = data["lname"].toString();
        email.text = data["email"];
        setState(() {});
      }
    else
      {
        print("No any data with Email : " + widget.email.toString());
      }

  });


  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Email is ${widget.email}"),),
      body: Center
        (
        child: Column
          (
          children:
          [
            TextField(controller: fname,decoration: InputDecoration(hintText: "Enter Your Firstname"),),
            SizedBox(height: 10,),
            TextField(controller: lname,decoration: InputDecoration(hintText: "Enter Your Lastname"),),
            SizedBox(height: 10,),
            TextField(controller: email,decoration: InputDecoration(hintText: "Enter Your Email"),),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: ()
            {
              db.db.rawInsert("Update students set fname=?,lname=?,email=? where email=?",[fname.text.toString(),lname.text.toString(),email.text.toString(),widget.email]);
              print("Updated");
              Navigator.push(context,MaterialPageRoute(builder: (context) => MyApp()));

            }, child: Text("Update"))
          ],
        ),
      ),
      );
  }
}
