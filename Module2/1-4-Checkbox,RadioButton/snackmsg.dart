import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class SnackMsg extends StatefulWidget
{
  const SnackMsg({super.key});

  @override
  State<SnackMsg> createState() => _SnackMsgState();
}

class _SnackMsgState extends State<SnackMsg>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Snack Message"),),
      body: Column(

        children: [

          ElevatedButton(onPressed: ()
          {
            final snackBar = SnackBar(
              content: const Text('Yay! A SnackBar!'),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  // Some code to undo the change.
                },
              ),
            );

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }, child: Text("Toast 1")),
          SizedBox(height: 10,),


        ],
      ),
    );
  }
}
