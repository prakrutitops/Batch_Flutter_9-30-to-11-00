import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Model extends StatelessWidget
{
  late List list;

  Model({required this.list});

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context,i)
        {
          return ListTile
            (
            leading: Image.network(list[i]['t_logo'],width: 50,height: 200,),
            title: Text(list[i]['t_name']),
            subtitle:Text(list[i]['t_captain']) ,

          );
        });
  }
}
