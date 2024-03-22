import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget
{
  @override
  LoginState createState() => LoginState();

}

class LoginState extends State<LoginForm>
{
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Login Form"),),
        body: Center(

          child: Container(

              margin: EdgeInsets.all(25.00),
              child: Column
                (
                  children: [

                    TextField(controller:email,decoration: InputDecoration(hintText: "Enter Your Email"),),
                    SizedBox(height: 25,),
                    TextField(controller:pass,decoration: InputDecoration(hintText: "Enter Your Password"),),
                    SizedBox(height: 25,),
                    ElevatedButton(onPressed: ()
                    {

                      String email1 = email.text.toString();
                      String pass1 = pass.text.toString();

                      if(email1=="a@gmail.com" && pass1=="1234")
                      {
                        print("Logged in Succesfully");
                        //
                      }
                      else
                      {
                        print("Invalid Credentials");
                      }

                    }, child:Text("Login"))

                  ],
              ),


          ),

        ),
      );
  }

}
