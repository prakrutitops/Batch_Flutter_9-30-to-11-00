import 'package:flutter/material.dart';

import 'main2.dart';
import 'main4.dart';

void main()
{
  runApp(MaterialApp(home:BottomNavigation()));
}
class SwitchEx extends StatefulWidget
{
  const SwitchEx({super.key});

  @override
  State<SwitchEx> createState() => _SwitchExState();
}

class _SwitchExState extends State<SwitchEx>
{
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Switch Example"),),
        body: Center
          (
            child: Column
              (
                children:
                [

                    Switch
                      (
                        value: isSwitched,
                        onChanged: toggleSwitch,
                        activeColor: Colors.blue,
                        activeTrackColor: Colors.yellow,
                        inactiveThumbColor: Colors.redAccent,
                        inactiveTrackColor: Colors.orange,

                      ),

                  Text('$textValue', style: TextStyle(fontSize: 20),)




                ],
              ),
          ),
      );
  }

  void toggleSwitch(bool value)
  {
      if(isSwitched==false)
      {
        setState(()
        {
          isSwitched = true;
          textValue = 'Switch Button is ON';
        });
        //print('Switch Button is ON');
      }
      else
      {
        setState(()
        {
          isSwitched = false;
          textValue = 'Switch Button is OFF';
        });
        //print('Switch Button is OFF');
      }
  }
}

