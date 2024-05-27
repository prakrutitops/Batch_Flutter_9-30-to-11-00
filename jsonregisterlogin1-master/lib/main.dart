import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jsonregisterlogin1/signup.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'dashbaord.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget
{
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
{
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  late SharedPreferences sharedPreferences;
  late bool newuser;
  @override
  void initState() {
    // TODO: implement initState
    //super.initState();
    checkLogin();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Register Login"),),
        body: Center
          (
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column
                (
                  children:
                  [

                    TextFormField(controller:email,decoration: InputDecoration(hintText: "Enter Your Email"),keyboardType: TextInputType.emailAddress),
                    SizedBox(height: 10,),
                    TextFormField(controller:pass,decoration: InputDecoration(hintText: "Enter Your Password"),keyboardType: TextInputType.name,obscureText: true),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: ()
                    {

                        _login();


                    }, child: Text("Login")),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: ()
                    {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Register()));
                    }, child: Text("Do you want to Signup?")),



                  ],
                ),
            ),
          ),
      );
  }

  void _login()async
  {

  var response = await http.post(Uri.parse("https://topstech8.000webhostapp.com/CRUDAPI/login.php"),body:
    {

      "email":email.text.toString(),
      "password":pass.text.toString(),


    });
  var data = json.decode(response.body);
    if(data==0)
    {
      print("fail");
      final snackbar = SnackBar(content: const Text('Login Fail'),);
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
    else
    {
      print("success");
      sharedPreferences.setBool('mylogin', false);
      sharedPreferences.setString('myemail',email.text.toString() );
      Navigator.push(context,MaterialPageRoute(builder: (context) => DashboardPage()));
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    email.dispose();
    pass.dispose();
  }

  void checkLogin()async
  {
    sharedPreferences = await SharedPreferences.getInstance();

    newuser = (sharedPreferences.getBool('mylogin')?? true);
    print(newuser);
    if(newuser == false)
      {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashboardPage()));
      }
  }
}
