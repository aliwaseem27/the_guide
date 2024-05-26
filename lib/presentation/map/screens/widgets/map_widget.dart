import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationScreen extends StatefulWidget {
  static const String id = "location_screen";

  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  late GoogleMapController mapController;
  final LatLng _center = LatLng(32.59845, 44.01642);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  final List<Marker> markerList = <Marker>[
    const Marker(
      markerId: MarkerId('1'),
      position: LatLng(32.59845, 44.01642),
      infoWindow: InfoWindow(title: 'My Location'),
      flat: true,
    ),
  ];
  final List<Marker> myMarkers = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myMarkers.addAll(markerList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.location_searching),
        onPressed: ()  {
          mapController.animateCamera(
            CameraUpdate.newCameraPosition(
              CameraPosition(
                target: _center,
                zoom: 14.0,
              ),
            ),
          );
        },
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 14.0,
        ),
        mapType: MapType.normal,
        markers: Set<Marker>.of(myMarkers),
      ),
    );
  }
}
