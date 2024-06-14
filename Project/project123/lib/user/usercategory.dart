import 'package:flutter/material.dart';

class Category extends StatefulWidget
{
   var index;
   var category_name;

  Category({required this.index,required this.category_name});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(backgroundColor: Colors.grey,title:Text("${widget.category_name}"),),
        body:Center
          (

          ) ,
      );
  }
}
