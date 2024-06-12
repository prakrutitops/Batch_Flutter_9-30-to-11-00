import 'package:flutter/material.dart';
import 'package:project123/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserDashboardScreen extends StatefulWidget {
  const UserDashboardScreen({super.key});

  @override
  State<UserDashboardScreen> createState() => _UserDashboardScreenState();
}

class _UserDashboardScreenState extends State<UserDashboardScreen> {

  late SharedPreferences sharedPreferences;
  late String mob;
  @override
  void initState()
  {
    // TODO: implement initState
    //super.initState();
    initial();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("Welcome"),actions:
    [
      IconButton(onPressed: ()
      {
        sharedPreferences.setBool('project', true);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
      }, icon: Icon(Icons.logout))
    ],),);
  }

  void initial()async
  {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      mob = sharedPreferences.getString('mob')!;
    });
  }
}
