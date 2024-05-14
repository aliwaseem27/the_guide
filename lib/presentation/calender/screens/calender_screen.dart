import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CalenderScreen extends StatelessWidget {
  const CalenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Calender Screen"),
    );
  }
}
