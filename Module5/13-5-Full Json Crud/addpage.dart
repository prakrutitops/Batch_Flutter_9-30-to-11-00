import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jsoncrud123/main.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage>
{
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();

  void _insertdata()
  {
    var url = Uri.parse("https://topstech8.000webhostapp.com/CRUDAPI/insert.php");
    http.post(url,body:
    {
      "fname":fname.text.toString(),
      "lname":lname.text.toString(),
      "email":email.text.toString()

    });

  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Json Crud App"),),
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
              _insertdata();
              print("Inserted");
              Navigator.push(context,MaterialPageRoute(builder: (context) => MyApp()));



            }, child: Text("Insert"))
          ],
        ),
      ),



    );
  }
}
