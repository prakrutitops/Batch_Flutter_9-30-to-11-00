import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'main.dart';

class Edit extends StatefulWidget
{
  late List list;
  late int index;

  Edit({required this.list,required this.index});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit>
{



  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  void initState()
  {
    // TODO: implement initState
   // super.initState();

    fname = TextEditingController(text: widget.list[widget.index]['fname']);
    lname = TextEditingController(text: widget.list[widget.index]['lname']);
    email = TextEditingController(text: widget.list[widget.index]['email']);
  }


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Index is ${widget.index}"),),
      body: Center
        (
        child: Column
          (
          children:
          [
            TextFormField(controller: fname,decoration: InputDecoration(hintText: "Enter Your Firstname"),),
            SizedBox(height: 10,),
            TextFormField(controller: lname,decoration: InputDecoration(hintText: "Enter Your Lastname"),),
            SizedBox(height: 10,),
            TextFormField(controller: email,decoration: InputDecoration(hintText: "Enter Your Email"),),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: ()
            {
              _updatedata();
              Navigator.push(context,MaterialPageRoute(builder: (context) => MyApp()));



            }, child: Text("Update"))
          ],
        ),
      ),
    );
  }

  void _updatedata()
  {
    var url = Uri.parse("https://topstech8.000webhostapp.com/CRUDAPI/update.php");
    http.post(url,body:
    {
      "id":widget.list[widget.index]['id'],
      "fname":fname.text.toString(),
      "lname":lname.text.toString(),
      "email":email.text.toString()

    });
  }
}
