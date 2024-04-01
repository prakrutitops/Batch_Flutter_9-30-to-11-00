import 'package:flutter/material.dart';
import 'package:widget1/radioex.dart';
import 'package:widget1/snackmsg.dart';
import 'package:widget1/toastmsg.dart';

void main()
{
  runApp(MaterialApp(home:RadioButton()));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  late bool a=false,b=false,c=false;
  var total=0;
  var amount=0;
  var data="";


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Checkbox Example"),),
      body: Center
        (
          child: Column
            (
              children:
              [

                Text("Cafe Ordering System"),
                SizedBox(height: 10,),
                CheckboxListTile(
                    title: Text("Pizza"),
                    subtitle:Text("Rs. 100"),
                    value:a,

                    onChanged: (value)
                    {
                      setState(()
                      {
                          this.a = value!;
                          //amount+=100;
                         // data+="\n Pizza @ rs.100";
                          if(a==true)
                          {
                            amount+=100;
                            data+="\n Pizza @ rs.100";
                          }
                          else
                          {
                            amount-=100;
                          }

                      });
                  }),
                CheckboxListTile(
                    title: Text("Burger"),
                    subtitle:Text("Rs. 70"),

                    value:b,

                    onChanged: (value)
                    {
                      setState(()
                      {
                        this.b = value!;
                        if(b==true)
                        {
                          amount+=70;
                          data+="\n Burger @ rs.70";
                        }
                        else
                        {
                          amount-=70;
                        }

                      });
                    }),
                CheckboxListTile(
                    title: Text("Coffee"),
                    subtitle:Text("Rs. 120"),
                    value:c,
                    onChanged: (value)
                    {
                      setState(()
                      {

                        this.c = value!;
                        if(c==true)
                        {
                          amount+=120;
                          data+="\n Coffee @ rs.120";
                        }
                        else
                        {
                          amount-=120;
                        }


                      });
                    }),
                  ElevatedButton(onPressed: ()
                  {
                        print("\n Bill $data and $amount");
                  }, child: Text("Order"))

              ],
            ),

      ),
    );
  }
}
