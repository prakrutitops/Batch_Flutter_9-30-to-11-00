import 'package:flutter/material.dart';

void main()
{
  runApp(FirstScreen());
}
class FirstScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return MaterialApp
        (
          home: Scaffold
            (
              appBar: AppBar
                (
                  title: Text("First App"),
                  backgroundColor: Colors.amber,

                ),
                body: Center
                  (
                    child:Column
                      (
                        children:
                        [
                          Text("Jenil",style: TextStyle(fontSize: 25.00,fontWeight: FontWeight.bold,color: Colors.red),),
                          Text("Mitesh",style: TextStyle(fontSize: 25.00,fontWeight: FontWeight.bold,color: Colors.blue),),
                          Text("Mitesh",style: TextStyle(fontSize: 25.00,fontWeight: FontWeight.bold,color: Colors.blue),),
                          Text("Mitesh",style: TextStyle(fontSize: 25.00,fontWeight: FontWeight.bold,color: Colors.blue),),
                          Text("Mitesh",style: TextStyle(fontSize: 25.00,fontWeight: FontWeight.bold,color: Colors.blue),),
                          Image.network("https://images.unsplash.com/photo-1607252650355-f7fd0460ccdb?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YW5kcm9pZHxlbnwwfHwwfHx8MA%3D%3D",width: 250,height: 250,)
                        ],
                      )

                  ),
            ),
        );
  }

}
