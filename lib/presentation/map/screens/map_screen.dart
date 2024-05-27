import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:the_guide/presentation/map/screens/widgets/map_widget.dart';
import 'package:the_guide/presentation/map/screens/widgets/transform_coordinates.dart';

@RoutePage()
class MapScreen extends StatelessWidget {
  const MapScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return LocationScreen();
  }
}
