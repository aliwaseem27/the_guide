import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:the_guide/presentation/map/screens/widgets/map_widget.dart';

@RoutePage()
class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LocationScreen(),
    );
  }
}
