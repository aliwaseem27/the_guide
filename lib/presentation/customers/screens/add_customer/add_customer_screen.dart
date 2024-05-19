import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_guide/core/app_core.dart';
import 'package:the_guide/injection.dart';

import '../../blocs/add_customer/add_customer_bloc.dart';
import 'widgets/add_customer_button.dart';
import 'widgets/add_customer_form.dart';

@RoutePage()
class AddCustomerScreen extends StatelessWidget {
  const AddCustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddCustomerBloc>(
      create: (context) => getIt<AddCustomerBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add Customer'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AddCustomerForm(),
                AddCustomerButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
