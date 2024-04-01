import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}
enum BestTutorSite {javatpoint,w3schools,tutorialandexample}

class _RadioButtonState extends State<RadioButton> {

  BestTutorSite _site = BestTutorSite.javatpoint;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RadioButton Example"),),
      body: Center
        (
          child: Column
            (
              children:
              [
                RadioListTile
                  (
                  title: const Text('www.javatpoint.com'),
                    value: BestTutorSite.javatpoint,
                    groupValue: _site,
                    onChanged: (BestTutorSite? value)
                    {
                      setState(() {
                        _site = value!;
                      });

                    },
                  ),
                RadioListTile
                  (
                  title: const Text('www.w3school.com'),
                  value: BestTutorSite.w3schools,
                  groupValue: _site,
                  onChanged: (BestTutorSite? value)
                  {
                    setState(() {
                      _site = value!;
                    });
                  },
                ),
                RadioListTile
                  (
                  title: const Text('www.tutorialandexample.com'),
                  value: BestTutorSite.tutorialandexample,
                  groupValue: _site,
                  onChanged: (BestTutorSite? value)
                  {
                    setState(() {
                      _site = value!;
                    });
                  },
                )

              ],
            ),
        ),
    );
  }
}
