import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'main2.dart';

void main()
{
  runApp(MaterialApp(home:MyApp2()));
}



class MyApp extends StatelessWidget
{
  late GoogleMapController mapController;
  LatLng _latLng = LatLng(22.290374, 70.775374);


  @override
  Widget build(BuildContext context)
  {
      return Scaffold
        (
          appBar: AppBar
            (
              title: Text("Google Map Example"),

            ),
            body:
            GoogleMap
            (
              initialCameraPosition: CameraPosition
                (
                  target: _latLng,
                  zoom: 21.0

                ),

            ),
        );
  }

}
