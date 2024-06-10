import 'package:flutter/material.dart';
import 'package:project123/signup.dart';

class LoginScreen extends StatefulWidget
{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
{

  String? _mobilenumber;
  String? _password;
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar
        (
          title: Text('Login Form', style: TextStyle(fontWeight: FontWeight.bold)),
          backgroundColor: Colors.red[100],
        ),
      body: Center
        (

          child:
          Stack(

            children:
        [
          // Positioned.fill
          //   (
          //     //child: Image.asset( 'assets/a.jpg',fit: BoxFit.cover)
          //   ),

          SingleChildScrollView
            (
            padding: EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Mobile Number',
                      hintText: 'Enter mobile number',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.greenAccent[70],
                    ),
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a mobile number';
                      }
                      if (value.length != 10) {
                        return 'Mobile number must be 10 digits';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _mobilenumber = value;
                    },
                  ),
                  SizedBox(height: 16.0),


                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter password',
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.greenAccent[70]
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a password';
                      }
                      return null;
                    },
                    obscureText: true,
                    onSaved: (value) {
                      _password = value;
                    },
                  ),
                  SizedBox(height: 16.0),
                  Center(
                    child: ElevatedButton(
                      onPressed: _submitForm,
                      child: Text('Log in', style: TextStyle(fontWeight: FontWeight.bold)),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(10)
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Center(
                    child: ElevatedButton
                      (
                      onPressed:()
                      {
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => SignupScreen()));
                      } , child: Text("Sign up"),

                      ),
                    ),

                ],
              ),
            ),
          ),
        ],
      )
      ),
    );
  }

  void _submitForm()
  {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();


      print('Mobile Number: $_mobilenumber');
      print('Password: $_password');
    }
  }
}