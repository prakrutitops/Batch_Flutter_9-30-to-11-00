import 'package:flutter/material.dart';

class Model extends StatelessWidget
{
  late List list;
  Model({required this.list});


  @override
  Widget build(BuildContext context)
  {
    return ListView.builder
      (
        itemCount: list.length,
        itemBuilder:(context,index)
        {
            return ListTile
              (

                leading: Image.network(list[index]['imageurl'],width: 100,height: 200,),
                title: Text(list[index]['name']),
                subtitle: Column
                  (
                    children:
                    [
                      Text(list[index]['realname']),
                      Text(list[index]['team']),
                      Text(list[index]['firstappearance']),
                      Text(list[index]['createdby']),
                      Text(list[index]['publisher']),
                      Text(list[index]['bio'])

                    ],
                  ),
            );
        });
  }
}
