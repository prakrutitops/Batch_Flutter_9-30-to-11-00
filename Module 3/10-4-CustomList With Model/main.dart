import 'package:flutter/material.dart';
import 'package:listviewithmodel/model.dart';
import 'package:listviewithmodel/task1.dart';

void main()
{
  runApp(MaterialApp(home: MyApp123(),));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{

  final List<Model> items =
  [
    //data set
    Model(image: "https://images.hindustantimes.com/tech/img/2023/09/21/1600x900/fb_1695273515215_1695273522698.jpg", title: "Facebook", subtitle: "Social Media Platform"),
    Model(image: "https://helios-i.mashable.com/imagery/articles/05yfQXQPTICsoO41nfHTrlI/hero-image.fill.size_1248x702.v1640123672.png", title: "Instagram", subtitle: "Social Media Platform"),
    Model(image: "https://store-images.s-microsoft.com/image/apps.31120.9007199266245564.44dc7699-748d-4c34-ba5e-d04eb48f7960.bc4172bd-63f0-455a-9acd-5457f44e4473", title: "Linkedin", subtitle: "Professional Platform"),
  ];


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Listview Data"),),
        body: ListView.builder
          (

            itemCount: items.length,
            itemBuilder: (BuildContext context, int index)
            {
              //design create

              return ListTile
                (
                  //data get
                  // leading: Card
                  //   (
                  //
                  // ),
                  leading: Image.network(items[index].image,width: 60,height: 100,),
                  title: Text(items[index].title),
                  subtitle: Text(items[index].subtitle),

              );

            },

          ),
      );
  }
}
