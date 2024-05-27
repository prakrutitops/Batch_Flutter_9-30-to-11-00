import 'package:flutter/material.dart';
import 'package:jsonregisterlogin1/main.dart';
import 'package:http/http.dart' as http;

class  Register extends StatefulWidget
{
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<Register>
{
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Register Login"),),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center
          (
          child: Column
            (
            children:
            [

              TextFormField(controller:fname,decoration: InputDecoration(hintText: "Enter Your Firstname"),keyboardType: TextInputType.name,),
              SizedBox(height: 10,),
              TextFormField(controller:lname,decoration: InputDecoration(hintText: "Enter Your Lastname"),keyboardType: TextInputType.name),
              SizedBox(height: 10,),
              TextFormField(controller:email,decoration: InputDecoration(hintText: "Enter Your Email"),keyboardType: TextInputType.emailAddress),
              SizedBox(height: 10,),
              TextFormField(controller:pass,decoration: InputDecoration(hintText: "Enter Your Password"),keyboardType: TextInputType.name,obscureText: true),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: ()
              {

                insertdata();

                print("Inserted");


                Navigator.push(context,MaterialPageRoute(builder: (context) => MyHomePage()));

              }, child: Text("Signup")),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: ()
              {

              }, child: Text("Already have an account?")),



            ],
          ),
        ),
      ),
    );
  }

  void insertdata()
  {

      http.post(Uri.parse("https://topstech8.000webhostapp.com/CRUDAPI/register.php"),body: 
      {
          "fname":fname.text.toString(),
          "lname":lname.text.toString(),
          "email":email.text.toString(),
          "password":pass.text.toString(),
        
        
      });

  }
}
