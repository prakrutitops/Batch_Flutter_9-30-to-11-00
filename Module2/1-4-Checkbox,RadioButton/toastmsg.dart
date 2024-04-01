import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class ToastMsg extends StatefulWidget
{
  const ToastMsg({super.key});

  @override
  State<ToastMsg> createState() => _ToastMsgState();
}

class _ToastMsgState extends State<ToastMsg>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Toast Message"),),
      body: Column(

        children: [

          ElevatedButton(onPressed: ()
          {
            Fluttertoast.showToast(
                msg: "This is Center Short Toast",
                toastLength: Toast.LENGTH_SHORT,//Android
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,//Ios
                fontSize: 16.0
            );
          }, child: Text("Toast 1")),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: ()
          {

          }, child: Text("Toast 2")),

        ],
      ),
    );
  }
}
