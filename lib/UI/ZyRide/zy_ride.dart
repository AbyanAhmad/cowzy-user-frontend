import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
//ximport 'package:search_map_place/search_map_place.dart';

//void main() => runApp(MyApp());

class ZyRide extends StatefulWidget {
  @override
  _ZyRideState createState() => _ZyRideState();
}

class _ZyRideState extends State<ZyRide> {
  GoogleMapController mapController;

  //final LatLng _center = const LatLng(0, 0);
  static final CameraPosition _myLocation =
      CameraPosition(target: LatLng(0, 0));

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: _myLocation),
          ],
        ),
      ),
    );
  }
}
