import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CustomerListScreen extends StatelessWidget {
  const CustomerListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Customer List Screen"),
    );
  }
}
