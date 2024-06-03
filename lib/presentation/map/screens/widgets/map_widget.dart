import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
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

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error('Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  packData() {
    _determinePosition().then((value) async {
      print("My Position: ${value.latitude}, ${value.longitude}");
      myMarkers.add(Marker(
        markerId: const MarkerId("My Location"),
        position: LatLng(value.latitude, value.longitude),
        infoWindow: const InfoWindow(title: 'My Location'),
        flat: true,
      ));
      setState(() {});
      await mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(value.latitude, value.longitude),
            zoom: 14.0,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.location_searching),
        onPressed: packData,
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
