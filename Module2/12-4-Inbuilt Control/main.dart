import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:url_launcher/url_launcher.dart';
void main()
{
  runApp(MaterialApp(home:MyApp()));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  late XFile galleryFile;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar
          (
              title: Text("Support Application"),
              actions:
              [
                IconButton(onPressed: ()
                {

                        _makecall("9724004242");
                }, icon:Icon(Icons.call)),
                IconButton(onPressed: ()
                {
                    _sendingSMS();
                }, icon:Icon(Icons.sms)),
                IconButton(onPressed: ()
                {
                    sendemail();
                }, icon:Icon(Icons.email)),
              ],
          ),

          body: Center
            (
              child: Column
                (
                  children:
                  [
                    ElevatedButton(onPressed: ()
                    {

                    }, child: Text("Camera")),
                    ElevatedButton(onPressed: ()
                    {
                      imageSelectorGallery();
                    }, child: Text("Gallery")),
                  ],
                ),
            ),

      );
  }

  void _makecall(String number)async
  {

    var url = Uri.parse("tel:$number");
    if (await canLaunchUrl(url))
    {
       await launchUrl(url);
    }
    else
    {
      throw 'Could not launch $url';
    }

  }
  imageSelectorGallery() async
  {
    final picker = ImagePicker();
    galleryFile = (await picker.pickImage(source: ImageSource.gallery))!;
    print(galleryFile);
    setState(() {});
  }


  _sendingSMS() async {
    var url = Uri.parse("sms:966738292");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }


    // var url = Uri.parse("mail:feedback@geeksforgeeks.org");
    // if (await canLaunchUrl(url)) {
    //   await launchUrl(url);
    // } else {
    //   throw 'Could not launch $url';
    // }

    String? encodeQueryParameters(Map<String, String> params)
    {
      return params.entries
          .map((MapEntry<String, String> e) =>
      '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }
    void sendemail() async
    {
      Uri emaillaunchuri = Uri(scheme: 'mailto',path: 'abcd@gmail.com',
        query: encodeQueryParameters(<String, String>
        {
          'subject': 'Example Subject & Symbols are allowed!',

        }),
      );
      launchUrl(emaillaunchuri);
    }

  }

