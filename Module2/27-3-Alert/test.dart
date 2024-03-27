import 'package:flutter/material.dart';

class MyAlert1 extends StatefulWidget
{
  const MyAlert1({super.key});

  @override
  State<MyAlert1> createState() => _MyAlert1State();
}
enum Product { Apple, Samsung, Oppo, Redmi }

Future<Product?> selectionalert(BuildContext context) async
{
  return await showDialog<Product>(
      context: context,

      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Select Product '),
          children: <Widget>[

            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, Product.Apple);
              },
              child: const Text('Apple'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, Product.Samsung);
              },
              child: const Text('Samsung'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, Product.Oppo);
              },
              child: const Text('Oppo'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, Product.Redmi);
              },
              child: const Text('Redmi'),
            ),
          ],
        );
      });
}

class _MyAlert1State extends State<MyAlert1> {

  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Alert Example"),),
      body:Center(
      child:Column
        (

            children:
            [

                ElevatedButton(onPressed: ()
                {

                  showAlertDialog(context);

                }, child: Text("Simple Alert")),

              SizedBox(height: 10,),

              ElevatedButton(onPressed: ()
              {

                textalert(context);

              }, child: Text("Text Alert")),

              SizedBox(height: 10,),

              ElevatedButton(onPressed: ()
              {

                confirmalert(context);

              }, child: Text("Confirm Alert")),

              SizedBox(height: 10,),

              ElevatedButton(onPressed: ()
              {

                selectionalert(context);

              }, child: Text("Selection Alert"))


            ],

        ) ,
      )
      );
  }






  void showAlertDialog(BuildContext context)
  {

    Widget okButton = ElevatedButton
      (
      child: Text("OK"),
      onPressed: ()
      {
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog
        (
          title: Text("Simple Alert Message"),
          content: Text("This is an alert message"),
          actions:
          [
            okButton
          ],
        );
    showDialog
      (
        context: context,
        builder: (BuildContext context)
        {
          return alert;
        },
    );



  }

  void textalert(BuildContext context)
  {

    Widget okButton = ElevatedButton
      (
      child: Text("OK"),
      onPressed: ()
      {
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog
      (
      title: Text("Simple Alert Message"),
      content: TextFormField(
        controller:name,
        decoration: InputDecoration(hintText: "Enter Your Name"),
          ),
      actions:
      [
        okButton
      ],
    );
    showDialog
      (
      context: context,
      builder: (BuildContext context)
      {
        return alert;
      },
    );




  }

  void confirmalert(BuildContext context)
  {

    Widget okButton = ElevatedButton
      (
      child: Text("OK"),
      onPressed: ()
      {
        Navigator.of(context).pop();
      },
    );

    Widget cancelButton = ElevatedButton
      (
      child: Text("Cancel"),
      onPressed: ()
      {
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog
      (
      title: Text("Exit?"),
      content: Text("Are you sure you want to exit?"),
      actions:
      [
        okButton,
        cancelButton
      ],
    );
    showDialog
      (
      context: context,
      builder: (BuildContext context)
      {
        return alert;
      },
    );



  }



}
