import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:the_guide/presentation/customers/screens/customer_list/customer_list_screen.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomerListScreen();
  }
}
