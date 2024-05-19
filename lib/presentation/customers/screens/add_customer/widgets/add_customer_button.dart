import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/add_customer/add_customer_bloc.dart';

class AddCustomerButton extends StatelessWidget {
  const AddCustomerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: ()=> context.read<AddCustomerBloc>().add(const AddCustomerEvent.addCustomerButtonPressed()),
        child: const Text('Add Customer'),
      ),
    );
  }
}