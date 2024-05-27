import 'package:flutter/material.dart';
import 'package:jsonregisterlogin1/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  late SharedPreferences sharedPreferences;
  late String email;

  @override
  void initState() {
    // TODO: implement initState
    //super.initState();
    initial();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("welcome $email"),
      actions:
      [
        IconButton(onPressed: (){
          sharedPreferences.setBool('mylogin', true);
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
        }, icon: Icon(Icons.logout))
      ],),
    );
  }

  void initial()async
  {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      email = sharedPreferences.getString('myemail')!;
    });
  }
}
