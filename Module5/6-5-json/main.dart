import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model.dart';

void main()
{
  runApp(MaterialApp(home:MyApp()));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{

  Future<List> getdata() async
  {
    var resp = await http.get(Uri.parse("https://topstech8.000webhostapp.com/API_Demo_Morning/view.php"));
    return jsonDecode(resp.body);

  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Json Parsing"),),
      body: FutureBuilder<List>
        (
          future: getdata(),
          builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot)
          {
            if(snapshot.hasData)
            {
              return Model(list:snapshot.data!!);
            }
            if(snapshot.hasError)
            {
              print('Network Not Found');
            }
            return CircularProgressIndicator();
          },

        ),
    );

  }
}
