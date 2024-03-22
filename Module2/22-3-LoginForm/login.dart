import 'package:flutter/material.dart';

import 'dashboard.dart';

class MyLoginForm extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(title: Text("Login Form"),),
        body: Center
          (
            child: LoginForm()

        ),

    );
  }

}



class LoginForm extends StatefulWidget
{
  @override
  LoginState createState() => LoginState();

}

class LoginState extends State<LoginForm>
{
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context)
  {
    return Form(

        //appBar: AppBar(title: Text("Login Form"),),

          key: _formKey,
          child: Container(

              margin: EdgeInsets.all(25.00),
              child: Column
                (
                  children:
                  [

                    TextFormField
                      (
                      controller:email,
                      decoration: InputDecoration(hintText: "Enter Your Email"),
                      validator: (value)
                      {
                        if (value!.isEmpty)
                        {
                          return 'Please enter Firstname';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 25,),
                    TextFormField(
                      controller:pass,
                      decoration: InputDecoration(hintText: "Enter Your Password"),
                      obscureText: true,
                        validator: (value)
                      {
                      if (value!.isEmpty)
                      {
                        return 'Please enter Password';
                      }
                      return null;
                    }),
                    SizedBox(height: 25,),
                    ElevatedButton(onPressed: ()
                    {

                      if(_formKey.currentState!.validate())
                      {
                        String email1 = email.text.toString();
                        String pass1 = pass.text.toString();

                        if(email1=="a@gmail.com" && pass1=="1234")
                        {
                          print("Logged in Succesfully");
                          //
                          Navigator.push(context,MaterialPageRoute(builder: (context) => DashboardPage()));
                        }
                        else
                        {
                          print("Invalid Credentials");
                        }
                      }



                    }, child:Text("Login"))

                  ],
              ),


          ),


      );
  }

}