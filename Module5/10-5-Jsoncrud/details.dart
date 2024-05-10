import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'main.dart';
class Details extends StatefulWidget
{

//  const Details({super.key});

  late List list;
  late int index;

  Details({required this.list,required this.index});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Update"),),
        body: Center
          (
            child: Column
              (
              children:
              [
                Text(
                  widget.list[widget.index]['fname'],
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  widget.list[widget.index]['lname'],
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  widget.list[widget.index]['email'],
                  style: TextStyle(fontSize: 20.0),
                ),
                MaterialButton(
                  child: Text("Edit"),
                  color: Colors.deepPurpleAccent,
                  onPressed: ()
                  {

                  },
                  // onPressed: ()=>Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (BuildContext context)=> Edit(list:widget.list,index:widget.index)),
                  // ),
                ),

                MaterialButton(
                    child: Text("Delete"),
                    color: Colors.deepPurpleAccent,
                    onPressed: ()
                    {
                      confirm();
                    }
                )
              ],
              ),
          ),
      );
  }

  void confirm()
  {
    var url = "https://topstech8.000webhostapp.com/CRUDAPI/delete.php";
    http.post(Uri.parse(url),body:
    {
      'id':widget.list[widget.index]['id'],

    });
    Navigator.of(context).push
      (
        MaterialPageRoute(builder: (BuildContext context)=> MyApp()));
  }
}
