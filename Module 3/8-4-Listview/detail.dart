import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {

  int index;

  DetailScreen({required this.index});


  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("Index : ${widget.index}"),),);
  }
}
