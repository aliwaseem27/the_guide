import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/app_sizes.dart';
import '../../../blocs/add_customer/add_customer_bloc.dart';

class AddCustomerForm extends StatelessWidget {
  const AddCustomerForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddCustomerBloc, AddCustomerState>(
      builder: (context, state) {
        return Form(
          child: Column(
            children: [
              TextFormField(
                // controller: ,
                // validator: ,
                decoration: const InputDecoration(
                  labelText: 'Customer Name',
                  prefixIcon: Icon(Icons.person),
                ),
                onChanged: (value) =>
                    context.read<AddCustomerBloc>().add(AddCustomerEvent.nameChanged(value)),
              ),
              const SizedBox(height: AppSizes.spaceBtwInputFields),
              TextFormField(
                // controller: ,
                // validator: ,
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  prefixIcon: Icon(Icons.phone),
                ),
                onChanged: (value) =>
                    context.read<AddCustomerBloc>().add(AddCustomerEvent.phoneChanged(value)),
              ),
              const SizedBox(height: AppSizes.spaceBtwInputFields),
              TextFormField(
                // controller: ,
                // validator: ,
                decoration: const InputDecoration(
                  labelText: 'Email Address',
                  prefixIcon: Icon(Icons.email),
                ),
                onChanged: (value) =>
                    context.read<AddCustomerBloc>().add(AddCustomerEvent.emailChanged(value)),
              ),
              const SizedBox(height: AppSizes.spaceBtwInputFields),
              TextFormField(
                // controller: ,
                // validator: ,
                decoration: const InputDecoration(
                  labelText: 'Additional Notes',
                  prefixIcon: Icon(Icons.edit_note_sharp),
                ),
                onChanged: (value) =>
                    context.read<AddCustomerBloc>().add(AddCustomerEvent.notesChanged(value)),
              ),
              const SizedBox(height: AppSizes.spaceBtwInputFields),
              TextFormField(
                // controller: ,
                // validator: ,
                decoration: const InputDecoration(
                  labelText: 'Tags',
                  prefixIcon: Icon(Icons.tag),
                ),
                onChanged: (value) =>
                    context.read<AddCustomerBloc>().add(AddCustomerEvent.tagsChanged(value)),
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),
            ],
          ),
        );
      },
    );
  }
}