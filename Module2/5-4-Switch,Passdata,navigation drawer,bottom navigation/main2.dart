import 'package:flutter/material.dart';
import 'package:widget2/main3.dart';

class SecondScreen extends StatefulWidget
{
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen>
{
  TextEditingController value1 = TextEditingController();


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Second Screen"),),
        body: Center
          (
            child: Column
              (
                children:
                [
                  TextFormField
                    (
                      controller: value1,
                      decoration: InputDecoration
                        (
                          hintText: "Enter Value",

                        ),
                        validator: (value)
                        {
                            if(value!.isEmpty)
                            {
                                print("Please Enter Some Data");
                            }
                        },
                    ),
                    ElevatedButton(onPressed: ()
                    {
                        String a = value1.text.toString();
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> ThirdScreen(a: a,)));
                    }, child: Text("Submit"))
                ],
              ),
          ),
      );
  }
}
