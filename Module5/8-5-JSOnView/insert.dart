import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class InsertData extends StatefulWidget
{
  const InsertData({super.key});

  @override
  State<InsertData> createState() => _InsertDataState();
}

class _InsertDataState extends State<InsertData>
{
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Insert Data"),),
        body: Center
          (
              child: Column
                (
                  children:
                  [

                      TextField(controller: name,decoration: InputDecoration(hintText: "Enter Name"),),
                      SizedBox(height: 10,),
                      TextField(controller: surname,decoration: InputDecoration(hintText: "Enter Surname"),),
                      SizedBox(height: 10,),
                      ElevatedButton
                        (
                          onPressed: ()
                        {
                            _insertdata();
                        },
                          child: Text("Register"))

                  ],
                ),
          )
      );
  }

  void _insertdata()
  {
    var url = Uri.parse("https://topstech8.000webhostapp.com/API_Demo_Morning/insert.php");
    http.post(url,
        body:
      {
        "name":name.text.toString(),
        "surname":surname.text.toString()

      });

      print("Inserted");
  }
}
