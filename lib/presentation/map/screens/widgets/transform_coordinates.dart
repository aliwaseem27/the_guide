import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';

class TransformCoordinates extends StatefulWidget {
  const TransformCoordinates({super.key});

  @override
  State<TransformCoordinates> createState() => _TransformCoordinatesState();
}

class _TransformCoordinatesState extends State<TransformCoordinates> {
  List<Placemark> placemarks = [];
  List<Location> location = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(placemarks.reversed.last.country.toString()),
            Text(placemarks.reversed.last.locality.toString()),
            Text(placemarks.reversed.last.administrativeArea.toString()),
            Divider(),
            Text(location.reversed.last.latitude.toString()),
            Text(location.reversed.last.longitude.toString()),
            Text(location.reversed.last.timestamp.toString()),
            ElevatedButton(
              child: const Text('Transform Coordinates'),
              onPressed: () async {
                placemarks = await placemarkFromCoordinates(32.60366968656683, 44.01979392498559);
                location = await locationFromAddress("Iraq, Baghdad");
                setState(() {
                  print(location);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
